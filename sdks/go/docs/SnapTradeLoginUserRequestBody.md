# SnapTradeLoginUserRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Broker** | Pointer to **string** | Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;3cfea70ef4254afc89704e47275a7a9a&amp;pvs&#x3D;4) for a list of supported brokerages and their slugs. | [optional] 
**ImmediateRedirect** | Pointer to **bool** | When set to &#x60;true&#x60;, user will be redirected back to the partner&#39;s site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**CustomRedirect** | Pointer to **string** | URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**Reconnect** | Pointer to **string** | The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information. | [optional] 
**ConnectionType** | Pointer to **string** | Sets whether the connection should be read-only or trade-enabled. | [optional] [default to "read"]
**ConnectionPortalVersion** | Pointer to **string** | Sets the version of the connection portal to render. | [optional] [default to "v3"]

## Methods

### NewSnapTradeLoginUserRequestBody

`func NewSnapTradeLoginUserRequestBody() *SnapTradeLoginUserRequestBody`

NewSnapTradeLoginUserRequestBody instantiates a new SnapTradeLoginUserRequestBody object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSnapTradeLoginUserRequestBodyWithDefaults

`func NewSnapTradeLoginUserRequestBodyWithDefaults() *SnapTradeLoginUserRequestBody`

NewSnapTradeLoginUserRequestBodyWithDefaults instantiates a new SnapTradeLoginUserRequestBody object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBroker

`func (o *SnapTradeLoginUserRequestBody) GetBroker() string`

GetBroker returns the Broker field if non-nil, zero value otherwise.

### GetBrokerOk

`func (o *SnapTradeLoginUserRequestBody) GetBrokerOk() (*string, bool)`

GetBrokerOk returns a tuple with the Broker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBroker

`func (o *SnapTradeLoginUserRequestBody) SetBroker(v string)`

SetBroker sets Broker field to given value.

### HasBroker

`func (o *SnapTradeLoginUserRequestBody) HasBroker() bool`

HasBroker returns a boolean if a field has been set.

### GetImmediateRedirect

`func (o *SnapTradeLoginUserRequestBody) GetImmediateRedirect() bool`

GetImmediateRedirect returns the ImmediateRedirect field if non-nil, zero value otherwise.

### GetImmediateRedirectOk

`func (o *SnapTradeLoginUserRequestBody) GetImmediateRedirectOk() (*bool, bool)`

GetImmediateRedirectOk returns a tuple with the ImmediateRedirect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImmediateRedirect

`func (o *SnapTradeLoginUserRequestBody) SetImmediateRedirect(v bool)`

SetImmediateRedirect sets ImmediateRedirect field to given value.

### HasImmediateRedirect

`func (o *SnapTradeLoginUserRequestBody) HasImmediateRedirect() bool`

HasImmediateRedirect returns a boolean if a field has been set.

### GetCustomRedirect

`func (o *SnapTradeLoginUserRequestBody) GetCustomRedirect() string`

GetCustomRedirect returns the CustomRedirect field if non-nil, zero value otherwise.

### GetCustomRedirectOk

`func (o *SnapTradeLoginUserRequestBody) GetCustomRedirectOk() (*string, bool)`

GetCustomRedirectOk returns a tuple with the CustomRedirect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomRedirect

`func (o *SnapTradeLoginUserRequestBody) SetCustomRedirect(v string)`

SetCustomRedirect sets CustomRedirect field to given value.

### HasCustomRedirect

`func (o *SnapTradeLoginUserRequestBody) HasCustomRedirect() bool`

HasCustomRedirect returns a boolean if a field has been set.

### GetReconnect

`func (o *SnapTradeLoginUserRequestBody) GetReconnect() string`

GetReconnect returns the Reconnect field if non-nil, zero value otherwise.

### GetReconnectOk

`func (o *SnapTradeLoginUserRequestBody) GetReconnectOk() (*string, bool)`

GetReconnectOk returns a tuple with the Reconnect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReconnect

`func (o *SnapTradeLoginUserRequestBody) SetReconnect(v string)`

SetReconnect sets Reconnect field to given value.

### HasReconnect

`func (o *SnapTradeLoginUserRequestBody) HasReconnect() bool`

HasReconnect returns a boolean if a field has been set.

### GetConnectionType

`func (o *SnapTradeLoginUserRequestBody) GetConnectionType() string`

GetConnectionType returns the ConnectionType field if non-nil, zero value otherwise.

### GetConnectionTypeOk

`func (o *SnapTradeLoginUserRequestBody) GetConnectionTypeOk() (*string, bool)`

GetConnectionTypeOk returns a tuple with the ConnectionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionType

`func (o *SnapTradeLoginUserRequestBody) SetConnectionType(v string)`

SetConnectionType sets ConnectionType field to given value.

### HasConnectionType

`func (o *SnapTradeLoginUserRequestBody) HasConnectionType() bool`

HasConnectionType returns a boolean if a field has been set.

### GetConnectionPortalVersion

`func (o *SnapTradeLoginUserRequestBody) GetConnectionPortalVersion() string`

GetConnectionPortalVersion returns the ConnectionPortalVersion field if non-nil, zero value otherwise.

### GetConnectionPortalVersionOk

`func (o *SnapTradeLoginUserRequestBody) GetConnectionPortalVersionOk() (*string, bool)`

GetConnectionPortalVersionOk returns a tuple with the ConnectionPortalVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionPortalVersion

`func (o *SnapTradeLoginUserRequestBody) SetConnectionPortalVersion(v string)`

SetConnectionPortalVersion sets ConnectionPortalVersion field to given value.

### HasConnectionPortalVersion

`func (o *SnapTradeLoginUserRequestBody) HasConnectionPortalVersion() bool`

HasConnectionPortalVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


