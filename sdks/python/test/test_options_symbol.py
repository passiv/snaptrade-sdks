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
from snaptrade_client.model.underlying_symbol import UnderlyingSymbol
globals()['UnderlyingSymbol'] = UnderlyingSymbol
from snaptrade_client.model.options_symbol import OptionsSymbol


class TestOptionsSymbol(unittest.TestCase):
    """OptionsSymbol unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testOptionsSymbol(self):
        """Test OptionsSymbol"""
        # FIXME: construct object with mandatory attributes with example values
        # model = OptionsSymbol()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
