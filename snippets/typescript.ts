const { Snaptrade } = require("snaptrade-typescript-sdk");
const { randomUUID } = require("crypto");
const readline = require("readline");

async function main() {
  // 1) Initialize a client with your clientID and consumerKey.
  const snaptrade = new Snaptrade({
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY,
    clientId: process.env.SNAPTRADE_CLIENT_ID,
  });

  // 2) Check that the client is able to make a request to the API server.
  const status = await snaptrade.apiStatus.check();
  console.log("status:", status.data);

  // 3) Create a new user on SnapTrade
  const userId = randomUUID();
  const registerResponse = (
    await snaptrade.authentication.registerSnapTradeUser({
      userId,
    })
  ).data;
  console.log("registerResponse:", registerResponse);

  // Note: A user secret is only generated once. It's required to access
  // resources for certain endpoints.
  const userSecret = registerResponse.userSecret;

  // 4) Get a redirect URI. Users will need this to connect
  // their brokerage to the SnapTrade server.
  const redirectURI = (
    await snaptrade.authentication.loginSnapTradeUser({ userId, userSecret })
  ).data;
  console.log("redirectURI:", redirectURI);

  await waitForEnter(
    "Open the link in your browser. When done logging in, press Enter to continue..."
  );

  // 5) Get a list of connections
  const connections = (
    await snaptrade.connections.listBrokerageAuthorizations({
      userId,
      userSecret,
    })
  ).data;
  console.log("connections:", connections);

  // 6) Get a list of accounts for the first connection, if available
  if (!Array.isArray(connections) || connections.length === 0) {
    console.log("No brokerage connections found for the user.");
  } else {
    const accounts = (
      await snaptrade.connections.listBrokerageAuthorizationAccounts({
        authorizationId: connections[0].id,
        userId,
        userSecret,
      })
    ).data;
    console.log("accounts:", accounts);
  }

  // 6) Deleting a user
  const deleteResponse = (
    await snaptrade.authentication.deleteSnapTradeUser({ userId })
  ).data;
  console.log("deleteResponse:", deleteResponse);
}

function waitForEnter(prompt) {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  return new Promise((resolve) => {
    rl.question(prompt, () => {
      rl.close();
      resolve();
    });
  });
}

main();
