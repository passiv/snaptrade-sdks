"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://openapi-generator.tech
"""


import unittest

import snaptrade_client
from snaptrade_client.api.api_status_api import APIStatusApi  # noqa: E501


class TestAPIStatusApi(unittest.TestCase):
    """APIStatusApi unit test stubs"""

    def setUp(self):
        self.api = APIStatusApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_root_get(self):
        """Test case for root_get

        Get API Status  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
