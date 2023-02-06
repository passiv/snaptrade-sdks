# PartnerData

SnapTrade Partner metadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**redirect_uri** | **str** | URI to redirect user back to after user is done adding brokerage connections | [optional] 
**allowed_brokerages** | [**[Brokerage]**](Brokerage.md) | Brokerages that can be accessed by partners | [optional] 
**name** | **str** | Name of Snaptrade Partner | [optional] 
**slug** | **str** | Slug of Snaptrade Partner | [optional] 
**logo_url** | **str** | URL to partner&#39;s logo | [optional] 
**pin_required** | **bool** | Shows if pin is required by users to access connection page | [optional] 
**can_access_trades** | **bool** | Shows if users of Snaptrade partners can access trade endpoints | [optional] 
**can_access_holdings** | **bool** | Shows if Snaptrade partners can get user holdings data | [optional] 
**can_access_account_history** | **bool** | Shows if Snaptrade partners can get users account history data | [optional] 
**can_access_reference_data** | **bool** | Shows if Snaptrade partners can get users holdings data | [optional] 
**can_access_portfolio_management** | **bool** | Shows if users Snaptrade partners can access portfolio group management features | [optional] 
**can_access_orders** | **bool** | Shows if Snaptrade partners can get users account order history | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


