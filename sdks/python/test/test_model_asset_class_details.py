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
from snaptrade_client.model.model_asset_class import ModelAssetClass
from snaptrade_client.model.model_asset_class_target import ModelAssetClassTarget
globals()['ModelAssetClass'] = ModelAssetClass
globals()['ModelAssetClassTarget'] = ModelAssetClassTarget
from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails


class TestModelAssetClassDetails(unittest.TestCase):
    """ModelAssetClassDetails unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testModelAssetClassDetails(self):
        """Test ModelAssetClassDetails"""
        # FIXME: construct object with mandatory attributes with example values
        # model = ModelAssetClassDetails()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
