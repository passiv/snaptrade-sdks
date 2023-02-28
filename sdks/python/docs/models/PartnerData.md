# snaptrade_client.model.partner_data.PartnerData

SnapTrade Partner metadata

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | SnapTrade Partner metadata | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**redirect_uri** | None, str,  | NoneClass, str,  | URI to redirect user back to after user is done adding brokerage connections | [optional] 
**[allowed_brokerages](#allowed_brokerages)** | list, tuple, None,  | tuple, NoneClass,  | Brokerages that can be accessed by partners | [optional] 
**name** | None, str,  | NoneClass, str,  | Name of Snaptrade Partner | [optional] 
**slug** | None, str,  | NoneClass, str,  | Slug of Snaptrade Partner | [optional] 
**logo_url** | None, str,  | NoneClass, str,  | URL to partner&#x27;s logo | [optional] 
**pin_required** | None, bool,  | NoneClass, BoolClass,  | Shows if pin is required by users to access connection page | [optional] 
**can_access_trades** | None, bool,  | NoneClass, BoolClass,  | Shows if users of Snaptrade partners can access trade endpoints | [optional] 
**can_access_holdings** | None, bool,  | NoneClass, BoolClass,  | Shows if Snaptrade partners can get user holdings data | [optional] 
**can_access_account_history** | None, bool,  | NoneClass, BoolClass,  | Shows if Snaptrade partners can get users account history data | [optional] 
**can_access_reference_data** | None, bool,  | NoneClass, BoolClass,  | Shows if Snaptrade partners can get users holdings data | [optional] 
**can_access_portfolio_management** | None, bool,  | NoneClass, BoolClass,  | Shows if users Snaptrade partners can access portfolio group management features | [optional] 
**can_access_orders** | None, bool,  | NoneClass, BoolClass,  | Shows if Snaptrade partners can get users account order history | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# allowed_brokerages

Brokerages that can be accessed by partners

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  | Brokerages that can be accessed by partners | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Brokerage**](Brokerage.md) | [**Brokerage**](Brokerage.md) | [**Brokerage**](Brokerage.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

