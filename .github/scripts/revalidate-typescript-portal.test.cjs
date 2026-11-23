const { test } = require('node:test')
const assert = require('node:assert/strict')
const { revalidateTypescriptPortal, typescriptDescriptor, sameDescriptor } = require('./revalidate-typescript-portal.cjs')
const bundle = 'this.client={Snaptrade:function(){},SnaptradeAuth:function(){},SnaptradeOAuth:function(){}};this.client.SnaptradeOAuth.prototype.revokeToken=function(){}'
function setup(overrides = {}) {
  const calls = []
  return {
    calls,
    options: {
      descriptor: { npmName: 'yaml-sdk', version: '1.2.3' },
      fetchBundle: async (url) => { calls.push(url); return { ok: true, text: async () => bundle } },
      currentConfigMatches: () => true,
      revalidate: () => calls.push('revalidate'),
      sleep: async () => {},
      attempts: 3,
      ...overrides,
    },
  }
}
test('uses exact YAML package and version before revalidation', async () => {
  const { options, calls } = setup()
  assert.equal(await revalidateTypescriptPortal(options), 'revalidated')
  assert.deepEqual(calls, ['https://unpkg.com/yaml-sdk@1.2.3/dist/browser.umd.js', 'revalidate'])
})
test('retries CDN propagation and fails closed after a bounded number', async () => {
  let count = 0
  const { options, calls } = setup({ fetchBundle: async () => { count++; return { ok: false } } })
  await assert.rejects(revalidateTypescriptPortal(options), /unavailable after 3/)
  assert.equal(count, 3)
  assert.deepEqual(calls, [])
})
test('waits through CDN propagation and revalidates once the exact bundle becomes ready', async () => {
  let count = 0
  const delays = []
  const { options, calls } = setup({
    fetchBundle: async () => ({ ok: ++count === 2, text: async () => bundle }),
    sleep: async (ms) => delays.push(ms),
  })
  assert.equal(await revalidateTypescriptPortal(options), 'revalidated')
  assert.equal(count, 2)
  assert.deepEqual(delays, [5000])
  assert.deepEqual(calls, ['revalidate'])
})
test('skips obsolete release both before and after bundle readiness', async () => {
  for (const values of [[false], [true, false]]) {
    const { options, calls } = setup({ currentConfigMatches: () => values.shift() })
    assert.equal(await revalidateTypescriptPortal(options), 'superseded')
    assert.ok(!calls.includes('revalidate'))
  }
})
test('does not revalidate an incomplete UMD', async () => {
  const { options, calls } = setup({ fetchBundle: async () => ({ ok: true, text: async () => 'this.client={}' }) })
  await assert.rejects(revalidateTypescriptPortal(options), /not ready/)
  assert.deepEqual(calls, [])
})

test('compares only YAML package and version, allowing unrelated documentation and Python changes', () => {
  const descriptor = typescriptDescriptor('generators:\n  typescript:\n    npmName: snaptrade-typescript-sdk\n    version: 13.4.8\n  python:\n    version: 1.0.0\nportal:\n  title: Old')
  const docsChange = typescriptDescriptor('portal:\n  title: New\ngenerators:\n  python:\n    version: 2.0.0\n  typescript:\n    version: 13.4.8\n    npmName: snaptrade-typescript-sdk')
  assert.equal(sameDescriptor(descriptor, docsChange), true)
  assert.equal(sameDescriptor(descriptor, { ...docsChange, version: '13.4.9' }), false)
})
