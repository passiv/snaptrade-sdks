import { APIStatusApi, AuthenticationApi, AccountInformationApi } from "./api";
import { Configuration } from "./configuration";

function uuid() {
  var d = new Date().getTime(); //Timestamp
  var d2 =
    (typeof performance !== "undefined" &&
      performance.now &&
      performance.now() * 1000) ||
    0; //Time in microseconds since page-load or 0 if unsupported
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
    var r = Math.random() * 16; //random number between 0 and 16
    if (d > 0) {
      //Use timestamp until depleted
      r = (d + r) % 16 | 0;
      d = Math.floor(d / 16);
    } else {
      //Use microseconds since page-load if supported
      r = (d2 + r) % 16 | 0;
      d2 = Math.floor(d2 / 16);
    }
    return (c === "x" ? r : (r & 0x3) | 0x8).toString(16);
  });
}

it("getting started", async () => {
  // 1) Initialize a configuration with your clientID and consumerKey.
  const config = new Configuration({
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY,
    clientId: process.env.SNAPTRADE_CLIENT_ID,
  });

  // 2) Check that the client is able to make a request to the API server.
  const apiStatusApiInst = new APIStatusApi(config);
  const status = await apiStatusApiInst.rootGet();
  console.log("status:", status.data);

  // 3) Create a new user on SnapTrade
  const userId = uuid();
  const authenticationApiInst = new AuthenticationApi(config);
  const { userSecret } = (
    await authenticationApiInst.snapTradeRegisterUserPost({
      userId,
    })
  ).data;

  // Note: A user secret is only generated once. It's required to access
  // resources for certain endpoints.
  console.log("userSecret:", userSecret);

  // 4) Get a redirect URI. Users will need this to connect
  const data = (
    await authenticationApiInst.snapTradeLoginPost(userId, userSecret)
  ).data;
  if (!("redirectURI" in data)) throw Error("Should have gotten redirect URI");
  console.log("redirectURI:", data.redirectURI);

  // 5) Obtaining account holdings data
  const accountInformationApi = new AccountInformationApi(config);
  const holdings = (await accountInformationApi.holdingsGet(userId, userSecret))
    .data;
  console.log("holdings:", holdings);

  // 6) Deleting a user
  const deleteResponse = (
    await authenticationApiInst.snapTradeDeleteUserDelete(userId)
  ).data;
  console.log("deleteResponse:", deleteResponse);
});
