# ConnectedAssetPartnerStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalUsers** | **int32** | Number of users registered with your Client ID. | 
**TotalConnectedUsers** | **int32** | Number of users registered with your Client ID that have at least one connection, active or disabled. | 
**TotalActiveConnections** | **int32** | Number of active connections across users registered with your Client ID. | 
**TotalDisabledConnections** | **int32** | Number of disabled connections across users registered with your Client ID. | 
**OauthTotalUsers** | **NullableInt32** | Number of users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalConnectedUsers** | **NullableInt32** | Number of users who have authorized your OAuth application and have at least one connection, active or disabled. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalActiveConnections** | **NullableInt32** | Number of active connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalDisabledConnections** | **NullableInt32** | Number of disabled connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**ConnectedAssets** | **NullableFloat64** | Total latest account value across active connections of users registered with your Client ID, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**DisabledConnectedAssets** | **NullableFloat64** | Total account value across disabled connections of users registered with your Client ID, as of each connection&#39;s last sync, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**OauthConnectedAssets** | **NullableFloat64** | Total latest account value across active connections of users who have authorized your OAuth application, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**OauthDisabledConnectedAssets** | **NullableFloat64** | Total account value across disabled connections of users who have authorized your OAuth application, as of each connection&#39;s last sync, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**ConnectedAssetsCurrency** | **string** | ISO 4217 currency code the asset values are expressed in. | 
**ConnectedAssetsCalculatedAt** | **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. &#x60;null&#x60; until the first daily snapshot has been calculated. | 

## Methods

### NewConnectedAssetPartnerStats

`func NewConnectedAssetPartnerStats(totalUsers int32, totalConnectedUsers int32, totalActiveConnections int32, totalDisabledConnections int32, oauthTotalUsers NullableInt32, oauthTotalConnectedUsers NullableInt32, oauthTotalActiveConnections NullableInt32, oauthTotalDisabledConnections NullableInt32, connectedAssets NullableFloat64, disabledConnectedAssets NullableFloat64, oauthConnectedAssets NullableFloat64, oauthDisabledConnectedAssets NullableFloat64, connectedAssetsCurrency string, connectedAssetsCalculatedAt NullableTime, ) *ConnectedAssetPartnerStats`

NewConnectedAssetPartnerStats instantiates a new ConnectedAssetPartnerStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewConnectedAssetPartnerStatsWithDefaults

`func NewConnectedAssetPartnerStatsWithDefaults() *ConnectedAssetPartnerStats`

NewConnectedAssetPartnerStatsWithDefaults instantiates a new ConnectedAssetPartnerStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalUsers

`func (o *ConnectedAssetPartnerStats) GetTotalUsers() int32`

GetTotalUsers returns the TotalUsers field if non-nil, zero value otherwise.

### GetTotalUsersOk

`func (o *ConnectedAssetPartnerStats) GetTotalUsersOk() (*int32, bool)`

GetTotalUsersOk returns a tuple with the TotalUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalUsers

`func (o *ConnectedAssetPartnerStats) SetTotalUsers(v int32)`

SetTotalUsers sets TotalUsers field to given value.


### GetTotalConnectedUsers

`func (o *ConnectedAssetPartnerStats) GetTotalConnectedUsers() int32`

GetTotalConnectedUsers returns the TotalConnectedUsers field if non-nil, zero value otherwise.

### GetTotalConnectedUsersOk

`func (o *ConnectedAssetPartnerStats) GetTotalConnectedUsersOk() (*int32, bool)`

GetTotalConnectedUsersOk returns a tuple with the TotalConnectedUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalConnectedUsers

`func (o *ConnectedAssetPartnerStats) SetTotalConnectedUsers(v int32)`

SetTotalConnectedUsers sets TotalConnectedUsers field to given value.


### GetTotalActiveConnections

`func (o *ConnectedAssetPartnerStats) GetTotalActiveConnections() int32`

GetTotalActiveConnections returns the TotalActiveConnections field if non-nil, zero value otherwise.

### GetTotalActiveConnectionsOk

`func (o *ConnectedAssetPartnerStats) GetTotalActiveConnectionsOk() (*int32, bool)`

GetTotalActiveConnectionsOk returns a tuple with the TotalActiveConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalActiveConnections

`func (o *ConnectedAssetPartnerStats) SetTotalActiveConnections(v int32)`

SetTotalActiveConnections sets TotalActiveConnections field to given value.


### GetTotalDisabledConnections

`func (o *ConnectedAssetPartnerStats) GetTotalDisabledConnections() int32`

GetTotalDisabledConnections returns the TotalDisabledConnections field if non-nil, zero value otherwise.

### GetTotalDisabledConnectionsOk

`func (o *ConnectedAssetPartnerStats) GetTotalDisabledConnectionsOk() (*int32, bool)`

GetTotalDisabledConnectionsOk returns a tuple with the TotalDisabledConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalDisabledConnections

`func (o *ConnectedAssetPartnerStats) SetTotalDisabledConnections(v int32)`

SetTotalDisabledConnections sets TotalDisabledConnections field to given value.


### GetOauthTotalUsers

`func (o *ConnectedAssetPartnerStats) GetOauthTotalUsers() int32`

GetOauthTotalUsers returns the OauthTotalUsers field if non-nil, zero value otherwise.

### GetOauthTotalUsersOk

`func (o *ConnectedAssetPartnerStats) GetOauthTotalUsersOk() (*int32, bool)`

GetOauthTotalUsersOk returns a tuple with the OauthTotalUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalUsers

`func (o *ConnectedAssetPartnerStats) SetOauthTotalUsers(v int32)`

SetOauthTotalUsers sets OauthTotalUsers field to given value.


### SetOauthTotalUsersNil

`func (o *ConnectedAssetPartnerStats) SetOauthTotalUsersNil(b bool)`

 SetOauthTotalUsersNil sets the value for OauthTotalUsers to be an explicit nil

### UnsetOauthTotalUsers
`func (o *ConnectedAssetPartnerStats) UnsetOauthTotalUsers()`

UnsetOauthTotalUsers ensures that no value is present for OauthTotalUsers, not even an explicit nil
### GetOauthTotalConnectedUsers

`func (o *ConnectedAssetPartnerStats) GetOauthTotalConnectedUsers() int32`

GetOauthTotalConnectedUsers returns the OauthTotalConnectedUsers field if non-nil, zero value otherwise.

### GetOauthTotalConnectedUsersOk

`func (o *ConnectedAssetPartnerStats) GetOauthTotalConnectedUsersOk() (*int32, bool)`

GetOauthTotalConnectedUsersOk returns a tuple with the OauthTotalConnectedUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalConnectedUsers

`func (o *ConnectedAssetPartnerStats) SetOauthTotalConnectedUsers(v int32)`

SetOauthTotalConnectedUsers sets OauthTotalConnectedUsers field to given value.


### SetOauthTotalConnectedUsersNil

`func (o *ConnectedAssetPartnerStats) SetOauthTotalConnectedUsersNil(b bool)`

 SetOauthTotalConnectedUsersNil sets the value for OauthTotalConnectedUsers to be an explicit nil

### UnsetOauthTotalConnectedUsers
`func (o *ConnectedAssetPartnerStats) UnsetOauthTotalConnectedUsers()`

UnsetOauthTotalConnectedUsers ensures that no value is present for OauthTotalConnectedUsers, not even an explicit nil
### GetOauthTotalActiveConnections

`func (o *ConnectedAssetPartnerStats) GetOauthTotalActiveConnections() int32`

GetOauthTotalActiveConnections returns the OauthTotalActiveConnections field if non-nil, zero value otherwise.

### GetOauthTotalActiveConnectionsOk

`func (o *ConnectedAssetPartnerStats) GetOauthTotalActiveConnectionsOk() (*int32, bool)`

GetOauthTotalActiveConnectionsOk returns a tuple with the OauthTotalActiveConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalActiveConnections

`func (o *ConnectedAssetPartnerStats) SetOauthTotalActiveConnections(v int32)`

SetOauthTotalActiveConnections sets OauthTotalActiveConnections field to given value.


### SetOauthTotalActiveConnectionsNil

`func (o *ConnectedAssetPartnerStats) SetOauthTotalActiveConnectionsNil(b bool)`

 SetOauthTotalActiveConnectionsNil sets the value for OauthTotalActiveConnections to be an explicit nil

### UnsetOauthTotalActiveConnections
`func (o *ConnectedAssetPartnerStats) UnsetOauthTotalActiveConnections()`

UnsetOauthTotalActiveConnections ensures that no value is present for OauthTotalActiveConnections, not even an explicit nil
### GetOauthTotalDisabledConnections

`func (o *ConnectedAssetPartnerStats) GetOauthTotalDisabledConnections() int32`

GetOauthTotalDisabledConnections returns the OauthTotalDisabledConnections field if non-nil, zero value otherwise.

### GetOauthTotalDisabledConnectionsOk

`func (o *ConnectedAssetPartnerStats) GetOauthTotalDisabledConnectionsOk() (*int32, bool)`

GetOauthTotalDisabledConnectionsOk returns a tuple with the OauthTotalDisabledConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalDisabledConnections

`func (o *ConnectedAssetPartnerStats) SetOauthTotalDisabledConnections(v int32)`

SetOauthTotalDisabledConnections sets OauthTotalDisabledConnections field to given value.


### SetOauthTotalDisabledConnectionsNil

`func (o *ConnectedAssetPartnerStats) SetOauthTotalDisabledConnectionsNil(b bool)`

 SetOauthTotalDisabledConnectionsNil sets the value for OauthTotalDisabledConnections to be an explicit nil

### UnsetOauthTotalDisabledConnections
`func (o *ConnectedAssetPartnerStats) UnsetOauthTotalDisabledConnections()`

UnsetOauthTotalDisabledConnections ensures that no value is present for OauthTotalDisabledConnections, not even an explicit nil
### GetConnectedAssets

`func (o *ConnectedAssetPartnerStats) GetConnectedAssets() float64`

GetConnectedAssets returns the ConnectedAssets field if non-nil, zero value otherwise.

### GetConnectedAssetsOk

`func (o *ConnectedAssetPartnerStats) GetConnectedAssetsOk() (*float64, bool)`

GetConnectedAssetsOk returns a tuple with the ConnectedAssets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectedAssets

`func (o *ConnectedAssetPartnerStats) SetConnectedAssets(v float64)`

SetConnectedAssets sets ConnectedAssets field to given value.


### SetConnectedAssetsNil

`func (o *ConnectedAssetPartnerStats) SetConnectedAssetsNil(b bool)`

 SetConnectedAssetsNil sets the value for ConnectedAssets to be an explicit nil

### UnsetConnectedAssets
`func (o *ConnectedAssetPartnerStats) UnsetConnectedAssets()`

UnsetConnectedAssets ensures that no value is present for ConnectedAssets, not even an explicit nil
### GetDisabledConnectedAssets

`func (o *ConnectedAssetPartnerStats) GetDisabledConnectedAssets() float64`

GetDisabledConnectedAssets returns the DisabledConnectedAssets field if non-nil, zero value otherwise.

### GetDisabledConnectedAssetsOk

`func (o *ConnectedAssetPartnerStats) GetDisabledConnectedAssetsOk() (*float64, bool)`

GetDisabledConnectedAssetsOk returns a tuple with the DisabledConnectedAssets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabledConnectedAssets

`func (o *ConnectedAssetPartnerStats) SetDisabledConnectedAssets(v float64)`

SetDisabledConnectedAssets sets DisabledConnectedAssets field to given value.


### SetDisabledConnectedAssetsNil

`func (o *ConnectedAssetPartnerStats) SetDisabledConnectedAssetsNil(b bool)`

 SetDisabledConnectedAssetsNil sets the value for DisabledConnectedAssets to be an explicit nil

### UnsetDisabledConnectedAssets
`func (o *ConnectedAssetPartnerStats) UnsetDisabledConnectedAssets()`

UnsetDisabledConnectedAssets ensures that no value is present for DisabledConnectedAssets, not even an explicit nil
### GetOauthConnectedAssets

`func (o *ConnectedAssetPartnerStats) GetOauthConnectedAssets() float64`

GetOauthConnectedAssets returns the OauthConnectedAssets field if non-nil, zero value otherwise.

### GetOauthConnectedAssetsOk

`func (o *ConnectedAssetPartnerStats) GetOauthConnectedAssetsOk() (*float64, bool)`

GetOauthConnectedAssetsOk returns a tuple with the OauthConnectedAssets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthConnectedAssets

`func (o *ConnectedAssetPartnerStats) SetOauthConnectedAssets(v float64)`

SetOauthConnectedAssets sets OauthConnectedAssets field to given value.


### SetOauthConnectedAssetsNil

`func (o *ConnectedAssetPartnerStats) SetOauthConnectedAssetsNil(b bool)`

 SetOauthConnectedAssetsNil sets the value for OauthConnectedAssets to be an explicit nil

### UnsetOauthConnectedAssets
`func (o *ConnectedAssetPartnerStats) UnsetOauthConnectedAssets()`

UnsetOauthConnectedAssets ensures that no value is present for OauthConnectedAssets, not even an explicit nil
### GetOauthDisabledConnectedAssets

`func (o *ConnectedAssetPartnerStats) GetOauthDisabledConnectedAssets() float64`

GetOauthDisabledConnectedAssets returns the OauthDisabledConnectedAssets field if non-nil, zero value otherwise.

### GetOauthDisabledConnectedAssetsOk

`func (o *ConnectedAssetPartnerStats) GetOauthDisabledConnectedAssetsOk() (*float64, bool)`

GetOauthDisabledConnectedAssetsOk returns a tuple with the OauthDisabledConnectedAssets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthDisabledConnectedAssets

`func (o *ConnectedAssetPartnerStats) SetOauthDisabledConnectedAssets(v float64)`

SetOauthDisabledConnectedAssets sets OauthDisabledConnectedAssets field to given value.


### SetOauthDisabledConnectedAssetsNil

`func (o *ConnectedAssetPartnerStats) SetOauthDisabledConnectedAssetsNil(b bool)`

 SetOauthDisabledConnectedAssetsNil sets the value for OauthDisabledConnectedAssets to be an explicit nil

### UnsetOauthDisabledConnectedAssets
`func (o *ConnectedAssetPartnerStats) UnsetOauthDisabledConnectedAssets()`

UnsetOauthDisabledConnectedAssets ensures that no value is present for OauthDisabledConnectedAssets, not even an explicit nil
### GetConnectedAssetsCurrency

`func (o *ConnectedAssetPartnerStats) GetConnectedAssetsCurrency() string`

GetConnectedAssetsCurrency returns the ConnectedAssetsCurrency field if non-nil, zero value otherwise.

### GetConnectedAssetsCurrencyOk

`func (o *ConnectedAssetPartnerStats) GetConnectedAssetsCurrencyOk() (*string, bool)`

GetConnectedAssetsCurrencyOk returns a tuple with the ConnectedAssetsCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectedAssetsCurrency

`func (o *ConnectedAssetPartnerStats) SetConnectedAssetsCurrency(v string)`

SetConnectedAssetsCurrency sets ConnectedAssetsCurrency field to given value.


### GetConnectedAssetsCalculatedAt

`func (o *ConnectedAssetPartnerStats) GetConnectedAssetsCalculatedAt() time.Time`

GetConnectedAssetsCalculatedAt returns the ConnectedAssetsCalculatedAt field if non-nil, zero value otherwise.

### GetConnectedAssetsCalculatedAtOk

`func (o *ConnectedAssetPartnerStats) GetConnectedAssetsCalculatedAtOk() (*time.Time, bool)`

GetConnectedAssetsCalculatedAtOk returns a tuple with the ConnectedAssetsCalculatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectedAssetsCalculatedAt

`func (o *ConnectedAssetPartnerStats) SetConnectedAssetsCalculatedAt(v time.Time)`

SetConnectedAssetsCalculatedAt sets ConnectedAssetsCalculatedAt field to given value.


### SetConnectedAssetsCalculatedAtNil

`func (o *ConnectedAssetPartnerStats) SetConnectedAssetsCalculatedAtNil(b bool)`

 SetConnectedAssetsCalculatedAtNil sets the value for ConnectedAssetsCalculatedAt to be an explicit nil

### UnsetConnectedAssetsCalculatedAt
`func (o *ConnectedAssetPartnerStats) UnsetConnectedAssetsCalculatedAt()`

UnsetConnectedAssetsCalculatedAt ensures that no value is present for ConnectedAssetsCalculatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


