# AllAccountOrdersResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]AccountOrder**](AccountOrder.md) | Orders returned for the request. | 
**DataFreshness** | [**AllAccountOrdersResponseDataFreshness**](AllAccountOrdersResponseDataFreshness.md) |  | 

## Methods

### NewAllAccountOrdersResponse

`func NewAllAccountOrdersResponse(results []AccountOrder, dataFreshness AllAccountOrdersResponseDataFreshness, ) *AllAccountOrdersResponse`

NewAllAccountOrdersResponse instantiates a new AllAccountOrdersResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAllAccountOrdersResponseWithDefaults

`func NewAllAccountOrdersResponseWithDefaults() *AllAccountOrdersResponse`

NewAllAccountOrdersResponseWithDefaults instantiates a new AllAccountOrdersResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *AllAccountOrdersResponse) GetResults() []AccountOrder`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *AllAccountOrdersResponse) GetResultsOk() (*[]AccountOrder, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *AllAccountOrdersResponse) SetResults(v []AccountOrder)`

SetResults sets Results field to given value.


### GetDataFreshness

`func (o *AllAccountOrdersResponse) GetDataFreshness() AllAccountOrdersResponseDataFreshness`

GetDataFreshness returns the DataFreshness field if non-nil, zero value otherwise.

### GetDataFreshnessOk

`func (o *AllAccountOrdersResponse) GetDataFreshnessOk() (*AllAccountOrdersResponseDataFreshness, bool)`

GetDataFreshnessOk returns a tuple with the DataFreshness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataFreshness

`func (o *AllAccountOrdersResponse) SetDataFreshness(v AllAccountOrdersResponseDataFreshness)`

SetDataFreshness sets DataFreshness field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


