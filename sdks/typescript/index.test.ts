import { Snaptrade, SnaptradeAuth } from "./index";

const commercialAuth = () =>
  SnaptradeAuth.commercialApiKey({
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY as string,
    clientId: process.env.SNAPTRADE_CLIENT_ID as string,
  });

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
  // 1) Initialize a client with your clientID and consumerKey.
  const snaptrade = new Snaptrade({
    auth: commercialAuth(),
  });

  // 2) Check that the client is able to make a request to the API server.
  const status = await snaptrade.apiStatus.check();
  console.log("status:", status.data);

  // 3) Create a new user on SnapTrade
  const userId = uuid();
  const { userSecret } = (
    await snaptrade.authentication.registerSnapTradeUser({
      userId,
    })
  ).data as { userSecret: string };

  // Note: A user secret is only generated once. It's required to access
  // resources for certain endpoints.
  console.log("userSecret:", userSecret);

  // 4) Get a redirect URI. Users will need this to connect
  const data = (
    await snaptrade.authentication.loginSnapTradeUser({ userId, userSecret })
  ).data;
  if (!("redirectURI" in data)) throw Error("Should have gotten redirect URI");
  console.log("redirectURI:", data.redirectURI);

  // 5) List the user's accounts
  const accounts = (
    await snaptrade.accountInformation.listUserAccounts({
      userId,
      userSecret,
    })
  ).data;
  console.log("accounts:", accounts);

  // 6) Deleting a user
  const deleteResponse = (
    await snaptrade.authentication.deleteSnapTradeUser({ userId })
  ).data;
  console.log("deleteResponse:", deleteResponse);
});

it("getUserAccountBalance", async () => {
  const snaptrade = new Snaptrade({
    auth: commercialAuth(),
  });
  const userId = process.env.SNAPTRADE_TEST_USER_ID as string;
  const userSecret = process.env.SNAPTRADE_TEST_USER_SECRET as string;
  const accounts = await snaptrade.accountInformation.listUserAccounts({
    userId,
    userSecret,
  });
  console.log(accounts.data);
  const response = await snaptrade.accountInformation.getUserAccountBalance({
    accountId: accounts.data[0].id as string,
    userId,
    userSecret,
  });
  console.log(response.data);
});

it("getAccountActivities", async () => {
  const snaptrade = new Snaptrade({
    auth: commercialAuth(),
  });
  const userId = process.env.SNAPTRADE_TEST_USER_ID as string;
  const userSecret = process.env.SNAPTRADE_TEST_USER_SECRET as string;
  const accounts = await snaptrade.accountInformation.listUserAccounts({
    userId,
    userSecret,
  });
  const accountId = accounts.data[0].id as string;
  let activities = await snaptrade.accountInformation.getAccountActivities({
    accountId,
    userId,
    userSecret,
  });
  console.log(activities.data);
  expect(activities).not.toBeNull();
  // create two variables "startDate" and "endDate" that are strings representing 1 year ago and today in yyyy-mm-dd format using today's date
  const startDate = "2020-01-01";
  const endDate = "2020-12-31";
  activities = await snaptrade.accountInformation.getAccountActivities({
    accountId,
    userId,
    userSecret,
    startDate,
    endDate,
  });
  console.log(activities.data);
  expect(activities).not.toBeNull();
  // create two variables "startDate" and "endDate" that are Date instances representing 1 year ago and today
  const endDate2 = new Date();
  // create variable startDate2 which is 1 year before endDate2
  const startDate2 = new Date(endDate2);
  startDate2.setFullYear(startDate2.getFullYear() - 1);
  activities = await snaptrade.accountInformation.getAccountActivities({
    accountId,
    userId,
    userSecret,
    startDate: startDate2,
    endDate: endDate2,
  });
  console.log(activities.data);
  expect(activities).not.toBeNull();
});

it("getAllAccountPositions", async () => {
  const snaptrade = new Snaptrade({
    auth: commercialAuth(),
  });
  const userId = process.env.SNAPTRADE_TEST_USER_ID as string;
  const userSecret = process.env.SNAPTRADE_TEST_USER_SECRET as string;
  const accounts = await snaptrade.accountInformation.listUserAccounts({
    userId,
    userSecret,
  });
  const positions = await snaptrade.accountInformation.getAllAccountPositions({
    userId,
    userSecret,
    accountId: accounts.data[0].id as string,
  });
  expect(positions).not.toBeNull();
  console.log(positions.data);
});
