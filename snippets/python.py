# Commercial API key example: registers a SnapTrade user and uses userId/userSecret.
import os
import uuid
from pprint import pprint
from typing import List

from snaptrade_client import SnapTrade, SnapTradeAuth

# 1) Initialize a client with your clientID and consumerKey.
snaptrade = SnapTrade(
    auth=SnapTradeAuth.commercial_api_key(
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
    )
)

# 2) Check that the client is able to make a request to the API server.
api_response = snaptrade.api_status.check()
pprint(api_response.body)

# 3) Create a new user on SnapTrade
user_id = str(uuid.uuid4())
register_response = snaptrade.authentication.register_snap_trade_user(
    user_id=user_id
)
pprint(register_response.body)

# Note: A user secret is only generated once. It's required to access
# resources for certain endpoints.
user_secret = register_response.body["userSecret"]

# 4) Get a redirect URI. Users will need this to connect
# their brokerage to the SnapTrade server.
redirect_uri = snaptrade.authentication.login_snap_trade_user(
    user_id=user_id,
    user_secret=user_secret,
)
print(redirect_uri.body)

input("Open the link in your browser. When done logging in, press Enter to continue...")

# 5) Get a list of connections
connections = snaptrade.connections.list(
    user_id=user_id,
    user_secret=user_secret,
)
pprint(connections.body)

# 6) Get a list of accounts for the first connection, if available
if not isinstance(connections.body, List) or len(connections.body) == 0:
    print("No brokerage connections found for the user.")
else:
    accounts = snaptrade.connections.list_brokerage_authorization_accounts(
        authorization_id=connections.body[0]["id"],
        user_id=user_id,
        user_secret=user_secret,
    )
    pprint(accounts.body)

# 6) Deleting a user
deleted_response = snaptrade.authentication.delete_snap_trade_user(
    user_id=user_id
)
pprint(deleted_response.body)
