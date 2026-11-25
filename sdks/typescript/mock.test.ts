import axios from "axios";
import { Snaptrade, SnaptradeAuth } from "./index";

describe("trailing slash is stripped", () => {
  it("should make a GET request to the correct URL", async () => {
    const mockGet = jest.fn().mockResolvedValueOnce({ data: {} });
    (axios.request as jest.Mock) = mockGet;

    // Call your function
    await new Snaptrade({
      auth: SnaptradeAuth.commercialApiKey({
        consumerKey: process.env.SNAPTRADE_CONSUMER_KEY as string,
        clientId: process.env.SNAPTRADE_CLIENT_ID as string,
      }),
      basePath: "http://localhost:3000/api/proxy",
    }).apiStatus.check();

    // The root operation must not leave a trailing slash or an empty query.
    expect(axios.request).toHaveBeenCalledWith(
      expect.objectContaining({
        url: "http://localhost:3000/api/proxy",
      })
    );
  });
});

describe("explicit unauthenticated clients", () => {
  it("requires explicit auth and leaves public requests unsigned", async () => {
    expect(() => new Snaptrade({} as any)).toThrow("auth is required");
    expect(() => new Snaptrade({ auth: undefined } as any)).toThrow("auth is required");
    const mockRequest = jest.fn().mockResolvedValue({ data: {} });
    axios.request = mockRequest;
    await new Snaptrade({ auth: null }).apiStatus.check();
    const request = mockRequest.mock.calls[0][0];
    expect(request.headers.Authorization).toBeUndefined();
    expect(request.headers.Signature).toBeUndefined();
    expect(new URL(request.url).search).toBe("");
  });

  it("leaves bypassed protected calls unsigned for server enforcement", async () => {
    const mockRequest = jest.fn().mockResolvedValue({ data: [] });
    axios.request = mockRequest;
    const client: any = new Snaptrade({ auth: null });
    await client.authentication.listSnapTradeUsers();
    const request = mockRequest.mock.calls[0][0];
    expect(request.headers.Authorization).toBeUndefined();
    expect(request.headers.Signature).toBeUndefined();
    expect(new URL(request.url).search).toBe("");
  });
});
