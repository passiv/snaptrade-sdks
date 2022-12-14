"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""


import sys
import unittest

import snaptrade_client
from snaptrade_client.model.currency import Currency
from snaptrade_client.model.exchange import Exchange
from snaptrade_client.model.security_type import SecurityType
globals()['Currency'] = Currency
globals()['Exchange'] = Exchange
globals()['SecurityType'] = SecurityType
from snaptrade_client.model.universal_symbol import UniversalSymbol


class TestUniversalSymbol(unittest.TestCase):
    """UniversalSymbol unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testUniversalSymbol(self):
        """Test UniversalSymbol"""
        # FIXME: construct object with mandatory attributes with example values
        # model = UniversalSymbol()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
