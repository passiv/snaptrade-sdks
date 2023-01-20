import os
import uuid
import snaptrade_client
from pprint import pprint
from snaptrade_client.api import api_status_api
from snaptrade_client.api import authentication_api
from snaptrade_client.api import account_information_api
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.api import api_disclaimer_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from snaptrade_client.model.snap_trade_register_user_request_body import SnapTradeRegisterUserRequestBody
from snaptrade_client.model.api_disclaimer_accept_request import APIDisclaimerAcceptRequest

# 1) Initialize a client with your clientID and consumerKey.
configuration = snaptrade_client.Configuration(client_id=os.environ["SNAPTRADE_CLIENT_ID"],
                                            consumer_key=os.environ['SNAPTRADE_CONSUMER_KEY'])

with snaptrade_client.ApiClient(configuration) as api_client:
    # 2) Check that the client is able to make a request to the API server.
    api_status_api_inst = api_status_api.APIStatusApi(api_client)
    api_response = api_status_api_inst.check()
    pprint(api_response)

    # 3) Create a new user on SnapTrade
    user_id = str(uuid.uuid4())
    authentication_api_inst = authentication_api.AuthenticationApi(api_client)
    register_response = authentication_api_inst.register_snap_trade_user(
        SnapTradeRegisterUserRequestBody(user_id=user_id))
    pprint(register_response)

    # Note: A user secret is only generated once. It's required to access
    # resources for certain endpoints.
    user_secret = register_response.user_secret

    # 4) Get a redirect URI. Users will need this to connect
    # their brokerage to the SnapTrade server.
    redirect_uri = authentication_api_inst.login_snap_trade_user(user_id, user_secret)
    print(redirect_uri)

    portfolio_management_api_inst = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_management_api_inst.create(user_id, user_secret,
                                                        PortfolioGroup(id=str(uuid.uuid4()), name="MyPortfolio"))
    res = portfolio_management_api_inst.list(user_id, user_secret)
    pprint(res)

    api_disclaimer_api_inst = api_disclaimer_api.APIDisclaimerApi(api_client)
    api_disclaimer_api_inst.accept(user_id, user_secret, APIDisclaimerAcceptRequest(accepted=True))

    # 5) Obtaining account holdings data
    account_information_api_inst = account_information_api.AccountInformationApi(api_client)
    holdings = account_information_api_inst.get_all_user_holdings(user_id, user_secret)
    pprint(holdings)

    # 6) Deleting a user
    deleted_response = authentication_api_inst.delete_snap_trade_user(user_id)
    pprint(deleted_response)