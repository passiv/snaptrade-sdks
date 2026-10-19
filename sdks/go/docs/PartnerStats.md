# PartnerStats

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
**AssetsUnderManagement** | **NullableFloat64** | Total latest account value across active connections of users registered with your Client ID, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**DisabledAssetsUnderManagement** | **NullableFloat64** | Total account value across disabled connections of users registered with your Client ID, as of each connection&#39;s last sync, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**OauthAssetsUnderManagement** | **NullableFloat64** | Total latest account value across active connections of users who have authorized your OAuth application, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**OauthDisabledAssetsUnderManagement** | **NullableFloat64** | Total account value across disabled connections of users who have authorized your OAuth application, as of each connection&#39;s last sync, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**AssetsUnderManagementCurrency** | **string** | ISO 4217 currency code the asset values are expressed in. | 
**AssetsUnderManagementCalculatedAt** | **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. &#x60;null&#x60; until the first daily snapshot has been calculated. | 

## Methods

### NewPartnerStats

`func NewPartnerStats(totalUsers int32, totalConnectedUsers int32, totalActiveConnections int32, totalDisabledConnections int32, oauthTotalUsers NullableInt32, oauthTotalConnectedUsers NullableInt32, oauthTotalActiveConnections NullableInt32, oauthTotalDisabledConnections NullableInt32, assetsUnderManagement NullableFloat64, disabledAssetsUnderManagement NullableFloat64, oauthAssetsUnderManagement NullableFloat64, oauthDisabledAssetsUnderManagement NullableFloat64, assetsUnderManagementCurrency string, assetsUnderManagementCalculatedAt NullableTime, ) *PartnerStats`

NewPartnerStats instantiates a new PartnerStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPartnerStatsWithDefaults

`func NewPartnerStatsWithDefaults() *PartnerStats`

NewPartnerStatsWithDefaults instantiates a new PartnerStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalUsers

`func (o *PartnerStats) GetTotalUsers() int32`

GetTotalUsers returns the TotalUsers field if non-nil, zero value otherwise.

### GetTotalUsersOk

`func (o *PartnerStats) GetTotalUsersOk() (*int32, bool)`

GetTotalUsersOk returns a tuple with the TotalUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalUsers

`func (o *PartnerStats) SetTotalUsers(v int32)`

SetTotalUsers sets TotalUsers field to given value.


### GetTotalConnectedUsers

`func (o *PartnerStats) GetTotalConnectedUsers() int32`

GetTotalConnectedUsers returns the TotalConnectedUsers field if non-nil, zero value otherwise.

### GetTotalConnectedUsersOk

`func (o *PartnerStats) GetTotalConnectedUsersOk() (*int32, bool)`

GetTotalConnectedUsersOk returns a tuple with the TotalConnectedUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalConnectedUsers

`func (o *PartnerStats) SetTotalConnectedUsers(v int32)`

SetTotalConnectedUsers sets TotalConnectedUsers field to given value.


### GetTotalActiveConnections

`func (o *PartnerStats) GetTotalActiveConnections() int32`

GetTotalActiveConnections returns the TotalActiveConnections field if non-nil, zero value otherwise.

### GetTotalActiveConnectionsOk

`func (o *PartnerStats) GetTotalActiveConnectionsOk() (*int32, bool)`

GetTotalActiveConnectionsOk returns a tuple with the TotalActiveConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalActiveConnections

`func (o *PartnerStats) SetTotalActiveConnections(v int32)`

SetTotalActiveConnections sets TotalActiveConnections field to given value.


### GetTotalDisabledConnections

`func (o *PartnerStats) GetTotalDisabledConnections() int32`

GetTotalDisabledConnections returns the TotalDisabledConnections field if non-nil, zero value otherwise.

### GetTotalDisabledConnectionsOk

`func (o *PartnerStats) GetTotalDisabledConnectionsOk() (*int32, bool)`

GetTotalDisabledConnectionsOk returns a tuple with the TotalDisabledConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalDisabledConnections

`func (o *PartnerStats) SetTotalDisabledConnections(v int32)`

SetTotalDisabledConnections sets TotalDisabledConnections field to given value.


### GetOauthTotalUsers

`func (o *PartnerStats) GetOauthTotalUsers() int32`

GetOauthTotalUsers returns the OauthTotalUsers field if non-nil, zero value otherwise.

### GetOauthTotalUsersOk

`func (o *PartnerStats) GetOauthTotalUsersOk() (*int32, bool)`

GetOauthTotalUsersOk returns a tuple with the OauthTotalUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalUsers

`func (o *PartnerStats) SetOauthTotalUsers(v int32)`

SetOauthTotalUsers sets OauthTotalUsers field to given value.


### SetOauthTotalUsersNil

`func (o *PartnerStats) SetOauthTotalUsersNil(b bool)`

 SetOauthTotalUsersNil sets the value for OauthTotalUsers to be an explicit nil

### UnsetOauthTotalUsers
`func (o *PartnerStats) UnsetOauthTotalUsers()`

UnsetOauthTotalUsers ensures that no value is present for OauthTotalUsers, not even an explicit nil
### GetOauthTotalConnectedUsers

`func (o *PartnerStats) GetOauthTotalConnectedUsers() int32`

GetOauthTotalConnectedUsers returns the OauthTotalConnectedUsers field if non-nil, zero value otherwise.

### GetOauthTotalConnectedUsersOk

`func (o *PartnerStats) GetOauthTotalConnectedUsersOk() (*int32, bool)`

GetOauthTotalConnectedUsersOk returns a tuple with the OauthTotalConnectedUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalConnectedUsers

`func (o *PartnerStats) SetOauthTotalConnectedUsers(v int32)`

SetOauthTotalConnectedUsers sets OauthTotalConnectedUsers field to given value.


### SetOauthTotalConnectedUsersNil

`func (o *PartnerStats) SetOauthTotalConnectedUsersNil(b bool)`

 SetOauthTotalConnectedUsersNil sets the value for OauthTotalConnectedUsers to be an explicit nil

### UnsetOauthTotalConnectedUsers
`func (o *PartnerStats) UnsetOauthTotalConnectedUsers()`

UnsetOauthTotalConnectedUsers ensures that no value is present for OauthTotalConnectedUsers, not even an explicit nil
### GetOauthTotalActiveConnections

`func (o *PartnerStats) GetOauthTotalActiveConnections() int32`

GetOauthTotalActiveConnections returns the OauthTotalActiveConnections field if non-nil, zero value otherwise.

### GetOauthTotalActiveConnectionsOk

`func (o *PartnerStats) GetOauthTotalActiveConnectionsOk() (*int32, bool)`

GetOauthTotalActiveConnectionsOk returns a tuple with the OauthTotalActiveConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalActiveConnections

`func (o *PartnerStats) SetOauthTotalActiveConnections(v int32)`

SetOauthTotalActiveConnections sets OauthTotalActiveConnections field to given value.


### SetOauthTotalActiveConnectionsNil

`func (o *PartnerStats) SetOauthTotalActiveConnectionsNil(b bool)`

 SetOauthTotalActiveConnectionsNil sets the value for OauthTotalActiveConnections to be an explicit nil

### UnsetOauthTotalActiveConnections
`func (o *PartnerStats) UnsetOauthTotalActiveConnections()`

UnsetOauthTotalActiveConnections ensures that no value is present for OauthTotalActiveConnections, not even an explicit nil
### GetOauthTotalDisabledConnections

`func (o *PartnerStats) GetOauthTotalDisabledConnections() int32`

GetOauthTotalDisabledConnections returns the OauthTotalDisabledConnections field if non-nil, zero value otherwise.

### GetOauthTotalDisabledConnectionsOk

`func (o *PartnerStats) GetOauthTotalDisabledConnectionsOk() (*int32, bool)`

GetOauthTotalDisabledConnectionsOk returns a tuple with the OauthTotalDisabledConnections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthTotalDisabledConnections

`func (o *PartnerStats) SetOauthTotalDisabledConnections(v int32)`

SetOauthTotalDisabledConnections sets OauthTotalDisabledConnections field to given value.


### SetOauthTotalDisabledConnectionsNil

`func (o *PartnerStats) SetOauthTotalDisabledConnectionsNil(b bool)`

 SetOauthTotalDisabledConnectionsNil sets the value for OauthTotalDisabledConnections to be an explicit nil

### UnsetOauthTotalDisabledConnections
`func (o *PartnerStats) UnsetOauthTotalDisabledConnections()`

UnsetOauthTotalDisabledConnections ensures that no value is present for OauthTotalDisabledConnections, not even an explicit nil
### GetAssetsUnderManagement

`func (o *PartnerStats) GetAssetsUnderManagement() float64`

GetAssetsUnderManagement returns the AssetsUnderManagement field if non-nil, zero value otherwise.

### GetAssetsUnderManagementOk

`func (o *PartnerStats) GetAssetsUnderManagementOk() (*float64, bool)`

GetAssetsUnderManagementOk returns a tuple with the AssetsUnderManagement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetsUnderManagement

`func (o *PartnerStats) SetAssetsUnderManagement(v float64)`

SetAssetsUnderManagement sets AssetsUnderManagement field to given value.


### SetAssetsUnderManagementNil

`func (o *PartnerStats) SetAssetsUnderManagementNil(b bool)`

 SetAssetsUnderManagementNil sets the value for AssetsUnderManagement to be an explicit nil

### UnsetAssetsUnderManagement
`func (o *PartnerStats) UnsetAssetsUnderManagement()`

UnsetAssetsUnderManagement ensures that no value is present for AssetsUnderManagement, not even an explicit nil
### GetDisabledAssetsUnderManagement

`func (o *PartnerStats) GetDisabledAssetsUnderManagement() float64`

GetDisabledAssetsUnderManagement returns the DisabledAssetsUnderManagement field if non-nil, zero value otherwise.

### GetDisabledAssetsUnderManagementOk

`func (o *PartnerStats) GetDisabledAssetsUnderManagementOk() (*float64, bool)`

GetDisabledAssetsUnderManagementOk returns a tuple with the DisabledAssetsUnderManagement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabledAssetsUnderManagement

`func (o *PartnerStats) SetDisabledAssetsUnderManagement(v float64)`

SetDisabledAssetsUnderManagement sets DisabledAssetsUnderManagement field to given value.


### SetDisabledAssetsUnderManagementNil

`func (o *PartnerStats) SetDisabledAssetsUnderManagementNil(b bool)`

 SetDisabledAssetsUnderManagementNil sets the value for DisabledAssetsUnderManagement to be an explicit nil

### UnsetDisabledAssetsUnderManagement
`func (o *PartnerStats) UnsetDisabledAssetsUnderManagement()`

UnsetDisabledAssetsUnderManagement ensures that no value is present for DisabledAssetsUnderManagement, not even an explicit nil
### GetOauthAssetsUnderManagement

`func (o *PartnerStats) GetOauthAssetsUnderManagement() float64`

GetOauthAssetsUnderManagement returns the OauthAssetsUnderManagement field if non-nil, zero value otherwise.

### GetOauthAssetsUnderManagementOk

`func (o *PartnerStats) GetOauthAssetsUnderManagementOk() (*float64, bool)`

GetOauthAssetsUnderManagementOk returns a tuple with the OauthAssetsUnderManagement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthAssetsUnderManagement

`func (o *PartnerStats) SetOauthAssetsUnderManagement(v float64)`

SetOauthAssetsUnderManagement sets OauthAssetsUnderManagement field to given value.


### SetOauthAssetsUnderManagementNil

`func (o *PartnerStats) SetOauthAssetsUnderManagementNil(b bool)`

 SetOauthAssetsUnderManagementNil sets the value for OauthAssetsUnderManagement to be an explicit nil

### UnsetOauthAssetsUnderManagement
`func (o *PartnerStats) UnsetOauthAssetsUnderManagement()`

UnsetOauthAssetsUnderManagement ensures that no value is present for OauthAssetsUnderManagement, not even an explicit nil
### GetOauthDisabledAssetsUnderManagement

`func (o *PartnerStats) GetOauthDisabledAssetsUnderManagement() float64`

GetOauthDisabledAssetsUnderManagement returns the OauthDisabledAssetsUnderManagement field if non-nil, zero value otherwise.

### GetOauthDisabledAssetsUnderManagementOk

`func (o *PartnerStats) GetOauthDisabledAssetsUnderManagementOk() (*float64, bool)`

GetOauthDisabledAssetsUnderManagementOk returns a tuple with the OauthDisabledAssetsUnderManagement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthDisabledAssetsUnderManagement

`func (o *PartnerStats) SetOauthDisabledAssetsUnderManagement(v float64)`

SetOauthDisabledAssetsUnderManagement sets OauthDisabledAssetsUnderManagement field to given value.


### SetOauthDisabledAssetsUnderManagementNil

`func (o *PartnerStats) SetOauthDisabledAssetsUnderManagementNil(b bool)`

 SetOauthDisabledAssetsUnderManagementNil sets the value for OauthDisabledAssetsUnderManagement to be an explicit nil

### UnsetOauthDisabledAssetsUnderManagement
`func (o *PartnerStats) UnsetOauthDisabledAssetsUnderManagement()`

UnsetOauthDisabledAssetsUnderManagement ensures that no value is present for OauthDisabledAssetsUnderManagement, not even an explicit nil
### GetAssetsUnderManagementCurrency

`func (o *PartnerStats) GetAssetsUnderManagementCurrency() string`

GetAssetsUnderManagementCurrency returns the AssetsUnderManagementCurrency field if non-nil, zero value otherwise.

### GetAssetsUnderManagementCurrencyOk

`func (o *PartnerStats) GetAssetsUnderManagementCurrencyOk() (*string, bool)`

GetAssetsUnderManagementCurrencyOk returns a tuple with the AssetsUnderManagementCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetsUnderManagementCurrency

`func (o *PartnerStats) SetAssetsUnderManagementCurrency(v string)`

SetAssetsUnderManagementCurrency sets AssetsUnderManagementCurrency field to given value.


### GetAssetsUnderManagementCalculatedAt

`func (o *PartnerStats) GetAssetsUnderManagementCalculatedAt() time.Time`

GetAssetsUnderManagementCalculatedAt returns the AssetsUnderManagementCalculatedAt field if non-nil, zero value otherwise.

### GetAssetsUnderManagementCalculatedAtOk

`func (o *PartnerStats) GetAssetsUnderManagementCalculatedAtOk() (*time.Time, bool)`

GetAssetsUnderManagementCalculatedAtOk returns a tuple with the AssetsUnderManagementCalculatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetsUnderManagementCalculatedAt

`func (o *PartnerStats) SetAssetsUnderManagementCalculatedAt(v time.Time)`

SetAssetsUnderManagementCalculatedAt sets AssetsUnderManagementCalculatedAt field to given value.


### SetAssetsUnderManagementCalculatedAtNil

`func (o *PartnerStats) SetAssetsUnderManagementCalculatedAtNil(b bool)`

 SetAssetsUnderManagementCalculatedAtNil sets the value for AssetsUnderManagementCalculatedAt to be an explicit nil

### UnsetAssetsUnderManagementCalculatedAt
`func (o *PartnerStats) UnsetAssetsUnderManagementCalculatedAt()`

UnsetAssetsUnderManagementCalculatedAt ensures that no value is present for AssetsUnderManagementCalculatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


