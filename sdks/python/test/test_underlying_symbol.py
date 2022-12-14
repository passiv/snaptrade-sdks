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
from snaptrade_client.model.security_type import SecurityType
from snaptrade_client.model.us_exchange import USExchange
globals()['Currency'] = Currency
globals()['SecurityType'] = SecurityType
globals()['USExchange'] = USExchange
from snaptrade_client.model.underlying_symbol import UnderlyingSymbol


class TestUnderlyingSymbol(unittest.TestCase):
    """UnderlyingSymbol unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testUnderlyingSymbol(self):
        """Test UnderlyingSymbol"""
        # FIXME: construct object with mandatory attributes with example values
        # model = UnderlyingSymbol()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
