# coding: utf-8

"""


    Generated by: https://konfigthis.com
"""

import unittest
from unittest.mock import patch

import urllib3

import snaptrade_client
from snaptrade_client.paths.accounts_account_id_holdings import get  # noqa: E501
from snaptrade_client import configuration, schemas, api_client

from .. import ApiTestMixin


class TestAccountsAccountIdHoldings(ApiTestMixin, unittest.TestCase):
    """
    AccountsAccountIdHoldings unit test stubs
        List balances, positions and orders for the specified account.  # noqa: E501
    """
    _configuration = configuration.Configuration()

    def setUp(self):
        used_api_client = api_client.ApiClient(configuration=self._configuration)
        self.api = get.ApiForget(api_client=used_api_client)  # noqa: E501

    def tearDown(self):
        pass

    response_status = 200




if __name__ == '__main__':
    unittest.main()
