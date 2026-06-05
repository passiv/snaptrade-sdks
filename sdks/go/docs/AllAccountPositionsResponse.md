# AllAccountPositionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]AccountPosition**](AccountPosition.md) | Positions returned for the request. | 
**DataFreshness** | [**AllAccountPositionsResponseDataFreshness**](AllAccountPositionsResponseDataFreshness.md) |  | 

## Methods

### NewAllAccountPositionsResponse

`func NewAllAccountPositionsResponse(results []AccountPosition, dataFreshness AllAccountPositionsResponseDataFreshness, ) *AllAccountPositionsResponse`

NewAllAccountPositionsResponse instantiates a new AllAccountPositionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAllAccountPositionsResponseWithDefaults

`func NewAllAccountPositionsResponseWithDefaults() *AllAccountPositionsResponse`

NewAllAccountPositionsResponseWithDefaults instantiates a new AllAccountPositionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *AllAccountPositionsResponse) GetResults() []AccountPosition`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *AllAccountPositionsResponse) GetResultsOk() (*[]AccountPosition, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *AllAccountPositionsResponse) SetResults(v []AccountPosition)`

SetResults sets Results field to given value.


### GetDataFreshness

`func (o *AllAccountPositionsResponse) GetDataFreshness() AllAccountPositionsResponseDataFreshness`

GetDataFreshness returns the DataFreshness field if non-nil, zero value otherwise.

### GetDataFreshnessOk

`func (o *AllAccountPositionsResponse) GetDataFreshnessOk() (*AllAccountPositionsResponseDataFreshness, bool)`

GetDataFreshnessOk returns a tuple with the DataFreshness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataFreshness

`func (o *AllAccountPositionsResponse) SetDataFreshness(v AllAccountPositionsResponseDataFreshness)`

SetDataFreshness sets DataFreshness field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


