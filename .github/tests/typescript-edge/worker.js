import { Snaptrade, SnaptradeAuth } from "../../../sdks/typescript/dist/index.mjs";

export default {
  async fetch() {
    let signedRequest;
    const adapter = async (config) => {
      signedRequest = config;
      return {
        data: [],
        status: 200,
        statusText: "OK",
        headers: {},
        config,
      };
    };

    const client = new Snaptrade({
      auth: SnaptradeAuth.commercialApiKey({
        clientId: "edge-client-id",
        consumerKey: "edge-consumer-key",
      }),
      baseOptions: { adapter },
    });

    await client.accountInformation.listUserAccounts({
      userId: "edge-user",
      userSecret: "edge-secret",
    });

    const signature = signedRequest?.headers?.get?.("Signature");
    if (typeof signature !== "string" || signature.length === 0) {
      throw new Error("SnapTrade request was not signed in workerd");
    }

    return new Response("ok");
  },
};
