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
from snaptrade_client.model.brokerage_type import BrokerageType
globals()['BrokerageType'] = BrokerageType
from snaptrade_client.model.brokerage import Brokerage


class TestBrokerage(unittest.TestCase):
    """Brokerage unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testBrokerage(self):
        """Test Brokerage"""
        # FIXME: construct object with mandatory attributes with example values
        # model = Brokerage()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()