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
from snaptrade_client.model.action import Action
from snaptrade_client.model.order_type import OrderType
from snaptrade_client.model.time_in_force import TimeInForce
globals()['Action'] = Action
globals()['OrderType'] = OrderType
globals()['TimeInForce'] = TimeInForce
from snaptrade_client.model.manual_trade_form import ManualTradeForm


class TestManualTradeForm(unittest.TestCase):
    """ManualTradeForm unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testManualTradeForm(self):
        """Test ManualTradeForm"""
        # FIXME: construct object with mandatory attributes with example values
        # model = ManualTradeForm()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()