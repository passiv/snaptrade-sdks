import { createHmac, webcrypto } from "node:crypto";
import type { RequestArgs } from "./base";
import { Configuration } from "./configuration";
import { computeHmacSha256, requestAfterHook } from "./requestAfterHook";

async function withWebCrypto(test: () => Promise<void>) {
  const originalCrypto = globalThis.crypto;
  Object.defineProperty(globalThis, "crypto", {
    value: webcrypto,
    configurable: true,
  });

  try {
    await test();
  } finally {
    Object.defineProperty(globalThis, "crypto", {
      value: originalCrypto,
      configurable: true,
    });
  }
}

describe("computeHmacSha256", () => {
  it("matches Node crypto HMAC SHA-256 base64 output", async () => {
    await withWebCrypto(async () => {
      const key = "snaptrade-consumer-key";
      const message = JSON.stringify({
        content: { userId: "edge-user", nested: { value: 42 } },
        path: "/api/v1/test",
        query: "a=1&b=two",
      });
      const expected = createHmac("sha256", key).update(message).digest("base64");

      await expect(computeHmacSha256(message, key)).resolves.toBe(expected);
    });
  });
});

describe("requestAfterHook", () => {
  it("signs the canonical request payload and writes the Signature header", async () => {
    await withWebCrypto(async () => {
      const consumerKey = "snaptrade key with spaces";
      const basePath = "https://api.snaptrade.com";
      const axiosArgs: RequestArgs = {
        url: "/api/v1/accounts?foo=bar",
        options: {
          data: JSON.stringify({ userId: "edge-user" }),
          headers: {},
        },
      };

      await requestAfterHook({
        axiosArgs,
        basePath,
        url: `${basePath}${axiosArgs.url}`,
        configuration: new Configuration({ consumerKey }),
      });

      const canonicalPayload = JSON.stringify({
        content: { userId: "edge-user" },
        path: "/api/v1/accounts",
        query: "foo=bar",
      });
      const expectedSignature = createHmac("sha256", encodeURI(consumerKey))
        .update(canonicalPayload)
        .digest("base64");
      expect(axiosArgs.options.headers).toEqual({ Signature: expectedSignature });
    });
  });
});
