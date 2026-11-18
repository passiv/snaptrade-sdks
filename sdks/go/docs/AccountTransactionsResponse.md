# AccountTransactionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | [**[]Activity**](Activity.md) | Matching transactions in descending date order. | 
**Pagination** | [**PaginationDetails**](PaginationDetails.md) |  | 

## Methods

### NewAccountTransactionsResponse

`func NewAccountTransactionsResponse(data []Activity, pagination PaginationDetails, ) *AccountTransactionsResponse`

NewAccountTransactionsResponse instantiates a new AccountTransactionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountTransactionsResponseWithDefaults

`func NewAccountTransactionsResponseWithDefaults() *AccountTransactionsResponse`

NewAccountTransactionsResponseWithDefaults instantiates a new AccountTransactionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AccountTransactionsResponse) GetData() []Activity`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AccountTransactionsResponse) GetDataOk() (*[]Activity, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AccountTransactionsResponse) SetData(v []Activity)`

SetData sets Data field to given value.


### GetPagination

`func (o *AccountTransactionsResponse) GetPagination() PaginationDetails`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AccountTransactionsResponse) GetPaginationOk() (*PaginationDetails, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AccountTransactionsResponse) SetPagination(v PaginationDetails)`

SetPagination sets Pagination field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


