# AccountTransactionsResponsePagination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** | The starting point of the paginated results. | [optional] 
**Limit** | Pointer to **int32** | The maximum number of items to return in the response. | [optional] 
**Total** | Pointer to **int32** | The total number of items available to be returned over the API. | [optional] 

## Methods

### NewAccountTransactionsResponsePagination

`func NewAccountTransactionsResponsePagination() *AccountTransactionsResponsePagination`

NewAccountTransactionsResponsePagination instantiates a new AccountTransactionsResponsePagination object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountTransactionsResponsePaginationWithDefaults

`func NewAccountTransactionsResponsePaginationWithDefaults() *AccountTransactionsResponsePagination`

NewAccountTransactionsResponsePaginationWithDefaults instantiates a new AccountTransactionsResponsePagination object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *AccountTransactionsResponsePagination) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *AccountTransactionsResponsePagination) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *AccountTransactionsResponsePagination) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *AccountTransactionsResponsePagination) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetLimit

`func (o *AccountTransactionsResponsePagination) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *AccountTransactionsResponsePagination) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *AccountTransactionsResponsePagination) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *AccountTransactionsResponsePagination) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetTotal

`func (o *AccountTransactionsResponsePagination) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *AccountTransactionsResponsePagination) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *AccountTransactionsResponsePagination) SetTotal(v int32)`

SetTotal sets Total field to given value.

### HasTotal

`func (o *AccountTransactionsResponsePagination) HasTotal() bool`

HasTotal returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


