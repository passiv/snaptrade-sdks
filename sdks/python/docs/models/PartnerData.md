# snaptrade_client.model.partner_data.PartnerData

SnapTrade Partner metadata

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | SnapTrade Partner metadata | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**redirect_uri** | str,  | str,  | URI to redirect user back to after user is done adding brokerage connections | [optional] 
**allowed_brokerages** | [**PartnerDataAllowedBrokerages**](PartnerDataAllowedBrokerages.md) | [**PartnerDataAllowedBrokerages**](PartnerDataAllowedBrokerages.md) |  | [optional] 
**name** | str,  | str,  | Name of Snaptrade Partner | [optional] 
**slug** | str,  | str,  | Slug of Snaptrade Partner | [optional] 
**logo_url** | str,  | str,  | URL to partner&#x27;s logo | [optional] 
**pin_required** | bool,  | BoolClass,  | Shows if pin is required by users to access connection page | [optional] 
**can_access_trades** | bool,  | BoolClass,  | Shows if users of Snaptrade partners can access trade endpoints | [optional] 
**can_access_holdings** | bool,  | BoolClass,  | Shows if Snaptrade partners can get user holdings data | [optional] 
**can_access_account_history** | bool,  | BoolClass,  | Shows if Snaptrade partners can get users account history data | [optional] 
**can_access_reference_data** | bool,  | BoolClass,  | Shows if Snaptrade partners can get users holdings data | [optional] 
**can_access_portfolio_management** | bool,  | BoolClass,  | Shows if users Snaptrade partners can access portfolio group management features | [optional] 
**can_access_orders** | bool,  | BoolClass,  | Shows if Snaptrade partners can get users account order history | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

