const { execFileSync } = require('node:child_process')
const { runInNewContext } = require('node:vm')
const { readFileSync } = require('node:fs')
const yaml = require('js-yaml')

function typescriptDescriptor(source) {
  const { npmName, version } = yaml.load(source).generators.typescript
  return { npmName, version }
}
function sameDescriptor(first, second) {
  return first.npmName === second.npmName && first.version === second.version
}

async function revalidateTypescriptPortal({ descriptor, fetchBundle, currentConfigMatches, revalidate, sleep, attempts = 60 }) {
  const { npmName, version } = descriptor
  if (!npmName || !version) throw new Error('TypeScript package and version are required from konfig.yaml')
  const url = `https://unpkg.com/${npmName}@${version}/dist/browser.umd.js`
  for (let attempt = 0; attempt < attempts; attempt++) {
    // A later master may advertise an unpublished version. An obsolete release
    // must not invalidate its portal cache, even when our own bundle is ready.
    if (!currentConfigMatches()) return 'superseded'
    try {
      const response = await fetchBundle(url, { redirect: 'error', signal: AbortSignal.timeout(15_000) })
      if (response.ok) {
        const sandbox = {}
        runInNewContext(await response.text(), sandbox, { timeout: 1000 })
        if (typeof sandbox.client?.Snaptrade !== 'function' ||
            typeof sandbox.client?.SnaptradeAuth !== 'function' ||
            typeof sandbox.client?.SnaptradeOAuth?.prototype?.revokeToken !== 'function') {
          throw new Error('Configured UMD is not ready')
        }
        if (!currentConfigMatches()) return 'superseded'
        revalidate()
        return 'revalidated'
      }
    } catch (error) {
      if (attempt === attempts - 1) throw error
    }
    if (attempt < attempts - 1) await sleep(5000)
  }
  throw new Error(`Configured browser SDK was unavailable after ${attempts} attempts`)
}

module.exports = { revalidateTypescriptPortal, typescriptDescriptor, sameDescriptor }
if (require.main === module) {
  revalidateTypescriptPortal({
    descriptor: typescriptDescriptor(readFileSync('konfig.yaml', 'utf8')),
    fetchBundle: fetch,
    currentConfigMatches: () => {
      execFileSync('git', ['fetch', 'origin', 'master'], { stdio: 'pipe' })
      const published = execFileSync('git', ['show', 'HEAD:konfig.yaml'], { encoding: 'utf8' })
      const current = execFileSync('git', ['show', 'FETCH_HEAD:konfig.yaml'], { encoding: 'utf8' })
      return sameDescriptor(typescriptDescriptor(published), typescriptDescriptor(current))
    },
    revalidate: () => execFileSync('konfig', ['revalidate-portal', '-o', 'passiv', '-r', 'snaptrade-sdks'], { stdio: 'inherit' }),
    sleep: (ms) => new Promise((resolve) => setTimeout(resolve, ms)),
  }).then((result) => console.log(`Portal revalidation: ${result}`)).catch((error) => {
    console.error(error.message)
    process.exitCode = 1
  })
}
