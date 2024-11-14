# RecentOrdersResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Orders** | Pointer to [**[]AccountOrderRecord**](AccountOrderRecord.md) | List of orders executed in the last 24 hours | [optional] 

## Methods

### NewRecentOrdersResponse

`func NewRecentOrdersResponse() *RecentOrdersResponse`

NewRecentOrdersResponse instantiates a new RecentOrdersResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecentOrdersResponseWithDefaults

`func NewRecentOrdersResponseWithDefaults() *RecentOrdersResponse`

NewRecentOrdersResponseWithDefaults instantiates a new RecentOrdersResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrders

`func (o *RecentOrdersResponse) GetOrders() []AccountOrderRecord`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *RecentOrdersResponse) GetOrdersOk() (*[]AccountOrderRecord, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *RecentOrdersResponse) SetOrders(v []AccountOrderRecord)`

SetOrders sets Orders field to given value.

### HasOrders

`func (o *RecentOrdersResponse) HasOrders() bool`

HasOrders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


