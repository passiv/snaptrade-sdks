# coding: utf-8

"""


    Generated by: https://konfigthis.com
"""

import unittest
from unittest.mock import patch

import urllib3

import snaptrade_client
from snaptrade_client.paths.currencies_rates import get  # noqa: E501
from snaptrade_client import configuration, schemas, api_client

from .. import ApiTestMixin


class TestCurrenciesRates(ApiTestMixin, unittest.TestCase):
    """
    CurrenciesRates unit test stubs
        Return the exchange rates of all supported currencies  # noqa: E501
    """

    def setUp(self):
        pass

    def tearDown(self):
        pass

    response_status = 200




if __name__ == '__main__':
    unittest.main()