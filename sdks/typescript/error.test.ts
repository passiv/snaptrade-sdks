import axios, { AxiosError, AxiosRequestConfig, AxiosResponse, InternalAxiosRequestConfig } from "axios";
import { inspect } from "util";
import { Snaptrade, SnaptradeError, SnaptradeAuth } from "./index";

const USER_SECRET = "user-secret-canary";
const CLIENT_ID = "client-id-canary";

function axiosError(url: string, response?: AxiosResponse): AxiosError {
  const config = { method: "get", url } as InternalAxiosRequestConfig;
  return new AxiosError(
    `Request failed for ${url}`,
    "ERR_BAD_REQUEST",
    config,
    undefined,
    response
  );
}

function expectCredentialsRedacted(value: string): void {
  expect(value).not.toContain(USER_SECRET);
  expect(value).not.toContain(CLIENT_ID);
}

it("redacts authentication query values without changing the outgoing request", async () => {
  let outgoingRequest: AxiosRequestConfig | undefined;
  (axios.request as jest.Mock) = jest.fn().mockImplementationOnce(async (config: AxiosRequestConfig) => {
    outgoingRequest = config;
    throw axiosError(config.url!);
  });

  const request = new Snaptrade({
    auth: SnaptradeAuth.commercialApiKey({
      clientId: CLIENT_ID,
      consumerKey: "consumer-key",
    }),
    basePath: "https://api.snaptrade.com",
  }).accountInformation.listUserAccounts({
    userId: "user-id-canary",
    userSecret: USER_SECRET,
  });

  let caughtError: unknown;
  try {
    await request;
  } catch (error) {
    caughtError = error;
  }

  expect(caughtError).toBeInstanceOf(SnaptradeError);
  expect(outgoingRequest?.url).toContain(`clientId=${CLIENT_ID}`);
  expect(outgoingRequest?.url).toContain(`userSecret=${USER_SECRET}`);
  expect(outgoingRequest?.headers).toHaveProperty("Signature");
  expectCredentialsRedacted((caughtError as SnaptradeError).url ?? "");
  expectCredentialsRedacted((caughtError as SnaptradeError).message);
});

it("preserves non-authentication query data and redacts repeated auth parameters everywhere", () => {
  const url = `https://api.snaptrade.com/accounts?limit=10&userSecret=${USER_SECRET}&USERSECRET=${USER_SECRET}#orders`;
  const error = new SnaptradeError(axiosError(url), { error: true }, {});
  const serializedError = JSON.stringify(error);
  const inspectedError = inspect(error);

  expect(error.url).toBe(
    "https://api.snaptrade.com/accounts?limit=10&userSecret=%5BREDACTED%5D&USERSECRET=%5BREDACTED%5D#orders"
  );
  expect(error.url).toContain("limit=10");
  expectCredentialsRedacted(error.message);
  expectCredentialsRedacted(error.stack ?? "");
  expectCredentialsRedacted(serializedError);
  expectCredentialsRedacted(inspectedError);
});

it("still wraps Axios failures when response body inspection fails", async () => {
  const response = {
    status: 400,
    statusText: "Bad Request",
    headers: {},
    config: {} as InternalAxiosRequestConfig,
    get data(): never {
      throw new Error("response body unavailable");
    },
  } as AxiosResponse;
  (axios.request as jest.Mock) = jest.fn().mockImplementationOnce(async (config: AxiosRequestConfig) => {
    throw axiosError(config.url!, response);
  });

  const request = new Snaptrade({
    auth: SnaptradeAuth.commercialApiKey({
      clientId: CLIENT_ID,
      consumerKey: "consumer-key",
    }),
    basePath: "https://api.snaptrade.com",
  }).accountInformation.listUserAccounts({
    userId: "user-id-canary",
    userSecret: USER_SECRET,
  });

  await expect(request).rejects.toMatchObject({
    name: "SnaptradeError",
    responseBody: undefined,
  });
});

it("wraps Axios errors created by a different Axios module instance", async () => {
  (axios.request as jest.Mock) = jest.fn().mockRejectedValueOnce({
    name: "AxiosError",
    message: "Cross-module Axios failure",
    isAxiosError: true,
    config: {
      method: "get",
      url: `https://api.snaptrade.com/accounts?userSecret=${USER_SECRET}`,
    },
  });

  const request = new Snaptrade({
    auth: SnaptradeAuth.commercialApiKey({
      clientId: CLIENT_ID,
      consumerKey: "consumer-key",
    }),
    basePath: "https://api.snaptrade.com",
  }).accountInformation.listUserAccounts({
    userId: "user-id-canary",
    userSecret: USER_SECRET,
  });

  await expect(request).rejects.toBeInstanceOf(SnaptradeError);
});

it("omits an unparseable URL instead of exposing it", () => {
  const url = `http://[invalid]?userSecret=${USER_SECRET}`;
  const error = new SnaptradeError(axiosError(url), undefined, {});

  expect(error.url).toBeUndefined();
  expectCredentialsRedacted(error.message);
  expectCredentialsRedacted(error.stack ?? "");
});
