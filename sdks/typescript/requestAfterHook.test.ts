import { createHmac, webcrypto } from "node:crypto";
import { computeHmacSha256 } from "./requestAfterHook";

describe("computeHmacSha256", () => {
  it("matches Node crypto HMAC SHA-256 base64 output", async () => {
    const key = "snaptrade-consumer-key";
    const message = JSON.stringify({
      content: { userId: "edge-user", nested: { value: 42 } },
      path: "/api/v1/test",
      query: "a=1&b=two",
    });
    const expected = createHmac("sha256", key).update(message).digest("base64");

    const originalCrypto = globalThis.crypto;
    Object.defineProperty(globalThis, "crypto", {
      value: webcrypto,
      configurable: true,
    });

    try {
      await expect(computeHmacSha256(message, key)).resolves.toBe(expected);
    } finally {
      Object.defineProperty(globalThis, "crypto", {
        value: originalCrypto,
        configurable: true,
      });
    }
  });
});
