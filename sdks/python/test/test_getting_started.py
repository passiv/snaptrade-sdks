"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""


import os
import unittest
import uuid
import snaptrade_client
from pprint import pprint
from snaptrade_client.api import api_status_api
from snaptrade_client.api import authentication_api
from snaptrade_client.api import account_information_api
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.api import api_disclaimer_api
from snaptrade_client.model.snap_trade_register_user_request_body import SnapTradeRegisterUserRequestBody
from snaptrade_client.model.snap_trade_accept_disclaimer_post_request import SnapTradeAcceptDisclaimerPostRequest
from snaptrade_client.model.portfolio_group import PortfolioGroup


class TestGettingStarted(unittest.TestCase):
    """AccountHoldings unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testGettingStarted(self):
        # 1) Initialize a client with your clientID and consumerKey.
        configuration = snaptrade_client.Configuration(client_id=os.environ["SNAPTRADE_CLIENT_ID"],
                                                    consumer_key=os.environ['SNAPTRADE_CONSUMER_KEY'])

        with snaptrade_client.ApiClient(configuration) as api_client:
            # 2) Check that the client is able to make a request to the API server.
            api_status_api_inst = api_status_api.APIStatusApi(api_client)
            api_response = api_status_api_inst.root_get()
            pprint(api_response)

            # 3) Create a new user on SnapTrade
            user_id = str(uuid.uuid4())
            authentication_api_inst = authentication_api.AuthenticationApi(api_client)
            register_response = authentication_api_inst.snap_trade_register_user_post(
                SnapTradeRegisterUserRequestBody(user_id=user_id))
            pprint(register_response)

            # Note: A user secret is only generated once. It's required to access
            # resources for certain endpoints.
            user_secret = register_response.user_secret

            # 4) Get a redirect URI. Users will need this to connect
            # their brokerage to the SnapTrade server.
            redirect_uri = authentication_api_inst.snap_trade_login_post(user_id, user_secret)
            print(redirect_uri)

            portfolio_management_api_inst = portfolio_management_api.PortfolioManagementApi(api_client)
            portfolio_management_api_inst.portfolio_groups_post(user_id, user_secret,
                                                                PortfolioGroup(id=str(uuid.uuid4()), name="MyPortfolio"))
            res = portfolio_management_api_inst.portfolio_groups_get(user_id, user_secret)
            pprint(res)

            api_disclaimer_api_inst = api_disclaimer_api.APIDisclaimerApi(api_client)
            api_disclaimer_api_inst.snap_trade_accept_disclaimer_post(user_id, user_secret,
                                                                    SnapTradeAcceptDisclaimerPostRequest(accepted=True))

            # 5) Obtaining account holdings data
            account_information_api_inst = account_information_api.AccountInformationApi(api_client)
            holdings = account_information_api_inst.holdings_get(user_id, user_secret)
            pprint(holdings)

            # 6) Deleting a user
            deleted_response = authentication_api_inst.snap_trade_delete_user_delete(user_id)
            pprint(deleted_response)


if __name__ == '__main__':
    unittest.main()