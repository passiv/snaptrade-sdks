import axios from "axios";
import { createHmac } from "crypto";
import { RequestArgs } from "./base";
import { Configuration } from "./configuration";
import { Snaptrade, SnaptradeAuth } from "./index";
import { requestAfterHook } from "./requestAfterHook";
import { requestBeforeHook } from "./requestBeforeHook";

const signingOperationAuth = {
  selectedAuthMode: "commercialApiKey",
  authModes: ["commercialApiKey"],
  requestSigningByAuthMode: {
    commercialApiKey: {
      secretParameter: "consumerKey",
      signedSecuritySchemes: ["PartnerSignature", "PartnerTimestamp"],
    },
  },
};

const personalSigningOperationAuth = {
  selectedAuthMode: "personalApiKey",
  authModes: ["personalApiKey"],
  requestSigningByAuthMode: {
    personalApiKey: {
      secretParameter: "consumerKey",
      signedSecuritySchemes: ["PersonalSignature", "PersonalTimestamp"],
    },
  },
};

it("adds timestamp and signature for signed API-key requests", async () => {
  const configuration = new Configuration({
    auth: SnaptradeAuth.commercialApiKey({
      clientId: "client_id",
      consumerKey: "consumer_key",
    }),
  });
  const queryParameters: Record<string, string> = {};
  const axiosArgs: RequestArgs = {
    url: "/accounts?timestamp=1700000000",
    options: {
      method: "GET",
      headers: {},
    },
  };

  requestBeforeHook({
    queryParameters,
    requestConfig: axiosArgs.options,
    path: "/accounts",
    configuration,
    pathTemplate: "/accounts",
    httpMethod: "GET",
    operationAuth: signingOperationAuth,
  });
  await requestAfterHook({
    axiosArgs,
    basePath: "https://api.snaptrade.com",
    url: "https://api.snaptrade.com/accounts?timestamp=1700000000",
    configuration,
    operationAuth: signingOperationAuth,
  });

  expect(queryParameters.timestamp).toMatch(/^\d+$/);
  const expectedSignature = createHmac("sha256", "consumer_key")
    .update(
      JSON.stringify({
        content: null,
        path: "/accounts",
        query: "timestamp=1700000000",
      })
    )
    .digest("base64");
  expect((axiosArgs.options.headers as Record<string, string>).Signature).toBe(
    expectedSignature
  );
});
it("does not add signing fields for public requests", async () => {
  const configuration = new Configuration({
    auth: SnaptradeAuth.personalApiKey({
      clientId: "client_id",
      consumerKey: "consumer_key",
    }),
  });
  const queryParameters: Record<string, string> = {};
  const axiosArgs: RequestArgs = {
    url: "/status",
    options: {
      method: "GET",
      headers: {},
    },
  };

  requestBeforeHook({
    queryParameters,
    requestConfig: axiosArgs.options,
    path: "/status",
    configuration,
    pathTemplate: "/status",
    httpMethod: "GET",
    operationAuth: undefined,
  });
  await requestAfterHook({
    axiosArgs,
    basePath: "https://api.snaptrade.com",
    url: "https://api.snaptrade.com/status",
    configuration,
    operationAuth: undefined,
  });

  expect(queryParameters).toEqual({});
  expect(axiosArgs.options.headers).not.toHaveProperty("Signature");
});

it("adds timestamp and signature for Personal API-key requests", async () => {
  const configuration = new Configuration({
    auth: SnaptradeAuth.personalApiKey({
      clientId: "client_id",
      consumerKey: "consumer_key",
    }),
  });
  const queryParameters: Record<string, string> = {};
  const axiosArgs: RequestArgs = {
    url: "/accounts?timestamp=1700000000",
    options: { method: "GET", headers: {} },
  };

  requestBeforeHook({
    queryParameters,
    requestConfig: axiosArgs.options,
    path: "/accounts",
    configuration,
    pathTemplate: "/accounts",
    httpMethod: "GET",
    operationAuth: personalSigningOperationAuth,
  });
  await requestAfterHook({
    axiosArgs,
    basePath: "https://api.snaptrade.com",
    url: "https://api.snaptrade.com/accounts?timestamp=1700000000",
    configuration,
    operationAuth: personalSigningOperationAuth,
  });

  expect(queryParameters.timestamp).toMatch(/^\d+$/);
  expect(axiosArgs.options.headers).toHaveProperty("Signature");
});

it("signs Commercial API-key requests for operations that inherit global security", async () => {
  const mockRequest = jest.fn().mockResolvedValueOnce({ data: [] });
  (axios.request as jest.Mock) = mockRequest;

  await new Snaptrade({
    auth: SnaptradeAuth.commercialApiKey({
      clientId: "client_id",
      consumerKey: "consumer_key",
    }),
    basePath: "https://api.snaptrade.com",
  }).accountInformation.listUserAccounts();

  expect(mockRequest).toHaveBeenCalledWith(
    expect.objectContaining({
      url: expect.stringMatching(
        /^https:\/\/api\.snaptrade\.com\/accounts\?(?=.*clientId=client_id)(?=.*timestamp=\d+)/
      ),
      headers: expect.objectContaining({
        Signature: expect.any(String),
      }),
    })
  );
});

it("signs Personal API-key requests for operations that inherit global security", async () => {
  const mockRequest = jest.fn().mockResolvedValueOnce({ data: [] });
  (axios.request as jest.Mock) = mockRequest;

  await new Snaptrade({
    auth: SnaptradeAuth.personalApiKey({
      clientId: "client_id",
      consumerKey: "consumer_key",
    }),
    basePath: "https://api.snaptrade.com",
  }).accountInformation.listUserAccounts();

  expect(mockRequest).toHaveBeenCalledWith(
    expect.objectContaining({
      url: expect.stringMatching(
        /^https:\/\/api\.snaptrade\.com\/accounts\?(?=.*clientId=client_id)(?=.*timestamp=\d+)/
      ),
      headers: expect.objectContaining({
        Signature: expect.any(String),
      }),
    })
  );
});
