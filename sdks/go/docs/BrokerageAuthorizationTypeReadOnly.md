# BrokerageAuthorizationTypeReadOnly

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**AuthType** | Pointer to **string** |  | [optional] 
**Brokerage** | Pointer to [**BrokerageAuthorizationTypeReadOnlyBrokerage**](BrokerageAuthorizationTypeReadOnlyBrokerage.md) |  | [optional] 

## Methods

### NewBrokerageAuthorizationTypeReadOnly

`func NewBrokerageAuthorizationTypeReadOnly() *BrokerageAuthorizationTypeReadOnly`

NewBrokerageAuthorizationTypeReadOnly instantiates a new BrokerageAuthorizationTypeReadOnly object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageAuthorizationTypeReadOnlyWithDefaults

`func NewBrokerageAuthorizationTypeReadOnlyWithDefaults() *BrokerageAuthorizationTypeReadOnly`

NewBrokerageAuthorizationTypeReadOnlyWithDefaults instantiates a new BrokerageAuthorizationTypeReadOnly object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *BrokerageAuthorizationTypeReadOnly) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrokerageAuthorizationTypeReadOnly) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrokerageAuthorizationTypeReadOnly) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *BrokerageAuthorizationTypeReadOnly) HasId() bool`

HasId returns a boolean if a field has been set.

### GetType

`func (o *BrokerageAuthorizationTypeReadOnly) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *BrokerageAuthorizationTypeReadOnly) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *BrokerageAuthorizationTypeReadOnly) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *BrokerageAuthorizationTypeReadOnly) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAuthType

`func (o *BrokerageAuthorizationTypeReadOnly) GetAuthType() string`

GetAuthType returns the AuthType field if non-nil, zero value otherwise.

### GetAuthTypeOk

`func (o *BrokerageAuthorizationTypeReadOnly) GetAuthTypeOk() (*string, bool)`

GetAuthTypeOk returns a tuple with the AuthType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthType

`func (o *BrokerageAuthorizationTypeReadOnly) SetAuthType(v string)`

SetAuthType sets AuthType field to given value.

### HasAuthType

`func (o *BrokerageAuthorizationTypeReadOnly) HasAuthType() bool`

HasAuthType returns a boolean if a field has been set.

### GetBrokerage

`func (o *BrokerageAuthorizationTypeReadOnly) GetBrokerage() BrokerageAuthorizationTypeReadOnlyBrokerage`

GetBrokerage returns the Brokerage field if non-nil, zero value otherwise.

### GetBrokerageOk

`func (o *BrokerageAuthorizationTypeReadOnly) GetBrokerageOk() (*BrokerageAuthorizationTypeReadOnlyBrokerage, bool)`

GetBrokerageOk returns a tuple with the Brokerage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerage

`func (o *BrokerageAuthorizationTypeReadOnly) SetBrokerage(v BrokerageAuthorizationTypeReadOnlyBrokerage)`

SetBrokerage sets Brokerage field to given value.

### HasBrokerage

`func (o *BrokerageAuthorizationTypeReadOnly) HasBrokerage() bool`

HasBrokerage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


