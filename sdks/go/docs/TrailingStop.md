# TrailingStop

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | **string** | The trail amount. Interpreted as dollars if &#x60;type&#x60; is &#x60;DOLLAR&#x60;, or a percentage if &#x60;type&#x60; is &#x60;PERCENT&#x60;. | 
**Type** | **string** | Whether the trail &#x60;amount&#x60; is a dollar amount (&#x60;DOLLAR&#x60;) or a percentage (&#x60;PERCENT&#x60;). For example, if &#x60;amount&#x60; is \&quot;0.60\&quot; and &#x60;type&#x60; is &#x60;DOLLAR&#x60;, the stop price will trail the market price by $0.60. If &#x60;amount&#x60; is \&quot;5\&quot; and &#x60;type&#x60; is &#x60;PERCENT&#x60;, the stop price will trail the market price by 5%. | 

## Methods

### NewTrailingStop

`func NewTrailingStop(amount string, type_ string, ) *TrailingStop`

NewTrailingStop instantiates a new TrailingStop object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTrailingStopWithDefaults

`func NewTrailingStopWithDefaults() *TrailingStop`

NewTrailingStopWithDefaults instantiates a new TrailingStop object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAmount

`func (o *TrailingStop) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *TrailingStop) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *TrailingStop) SetAmount(v string)`

SetAmount sets Amount field to given value.


### GetType

`func (o *TrailingStop) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *TrailingStop) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *TrailingStop) SetType(v string)`

SetType sets Type field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


