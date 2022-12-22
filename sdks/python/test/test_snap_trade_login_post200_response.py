"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import snaptrade_client
from snaptrade_client.model.encrypted_response import EncryptedResponse
from snaptrade_client.model.encrypted_response_encrypted_message_data import EncryptedResponseEncryptedMessageData
from snaptrade_client.model.login_redirect_uri import LoginRedirectURI
globals()['EncryptedResponse'] = EncryptedResponse
globals()['EncryptedResponseEncryptedMessageData'] = EncryptedResponseEncryptedMessageData
globals()['LoginRedirectURI'] = LoginRedirectURI
from snaptrade_client.model.snap_trade_login_post200_response import SnapTradeLoginPost200Response


class TestSnapTradeLoginPost200Response(unittest.TestCase):
    """SnapTradeLoginPost200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testSnapTradeLoginPost200Response(self):
        """Test SnapTradeLoginPost200Response"""
        # FIXME: construct object with mandatory attributes with example values
        # model = SnapTradeLoginPost200Response()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
