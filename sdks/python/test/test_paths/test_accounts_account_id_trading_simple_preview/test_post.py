# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import unittest
from unittest.mock import patch

import urllib3

import snaptrade_client
from snaptrade_client.paths.accounts_account_id_trading_simple_preview import post
from snaptrade_client import configuration, schemas, api_client

from .. import ApiTestMixin


class TestAccountsAccountIdTradingSimplePreview(ApiTestMixin, unittest.TestCase):
    """
    AccountsAccountIdTradingSimplePreview unit test stubs
        Preview crypto order
    """

    def setUp(self):
        pass

    def tearDown(self):
        pass

    response_status = 200






if __name__ == '__main__':
    unittest.main()
