"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://openapi-generator.tech
"""


import unittest

import snaptrade_client
from snaptrade_client.api.authentication_api import AuthenticationApi  # noqa: E501


class TestAuthenticationApi(unittest.TestCase):
    """AuthenticationApi unit test stubs"""

    def setUp(self):
        self.api = AuthenticationApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_snap_trade_delete_user_delete(self):
        """Test case for snap_trade_delete_user_delete

        Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user  # noqa: E501
        """
        pass

    def test_snap_trade_encrypted_jwt_get(self):
        """Test case for snap_trade_encrypted_jwt_get

        Obtains an encrypted JWT tokens that should be decrypted on a user's local device  # noqa: E501
        """
        pass

    def test_snap_trade_list_users_get(self):
        """Test case for snap_trade_list_users_get

        Get a list of all SnapTrade users you've registered on our platform  # noqa: E501
        """
        pass

    def test_snap_trade_login_post(self):
        """Test case for snap_trade_login_post

        Generate a redirect URI to securely login a user to the SnapTrade Connection Portal  # noqa: E501
        """
        pass

    def test_snap_trade_register_user_post(self):
        """Test case for snap_trade_register_user_post

        Register user with SnapTrade in order to create secure brokerage authorizations  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()