# PaginatedUniversalActivity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AccountUniversalActivity**](AccountUniversalActivity.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationDetails**](PaginationDetails.md) |  | [optional] 

## Methods

### NewPaginatedUniversalActivity

`func NewPaginatedUniversalActivity() *PaginatedUniversalActivity`

NewPaginatedUniversalActivity instantiates a new PaginatedUniversalActivity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPaginatedUniversalActivityWithDefaults

`func NewPaginatedUniversalActivityWithDefaults() *PaginatedUniversalActivity`

NewPaginatedUniversalActivityWithDefaults instantiates a new PaginatedUniversalActivity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PaginatedUniversalActivity) GetData() []AccountUniversalActivity`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PaginatedUniversalActivity) GetDataOk() (*[]AccountUniversalActivity, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PaginatedUniversalActivity) SetData(v []AccountUniversalActivity)`

SetData sets Data field to given value.

### HasData

`func (o *PaginatedUniversalActivity) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *PaginatedUniversalActivity) GetPagination() PaginationDetails`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *PaginatedUniversalActivity) GetPaginationOk() (*PaginationDetails, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *PaginatedUniversalActivity) SetPagination(v PaginationDetails)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *PaginatedUniversalActivity) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


