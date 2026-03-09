# BrokerageInstrumentsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instruments** | Pointer to [**[]BrokerageInstrument**](BrokerageInstrument.md) |  | [optional] 

## Methods

### NewBrokerageInstrumentsResponse

`func NewBrokerageInstrumentsResponse() *BrokerageInstrumentsResponse`

NewBrokerageInstrumentsResponse instantiates a new BrokerageInstrumentsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageInstrumentsResponseWithDefaults

`func NewBrokerageInstrumentsResponseWithDefaults() *BrokerageInstrumentsResponse`

NewBrokerageInstrumentsResponseWithDefaults instantiates a new BrokerageInstrumentsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstruments

`func (o *BrokerageInstrumentsResponse) GetInstruments() []BrokerageInstrument`

GetInstruments returns the Instruments field if non-nil, zero value otherwise.

### GetInstrumentsOk

`func (o *BrokerageInstrumentsResponse) GetInstrumentsOk() (*[]BrokerageInstrument, bool)`

GetInstrumentsOk returns a tuple with the Instruments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstruments

`func (o *BrokerageInstrumentsResponse) SetInstruments(v []BrokerageInstrument)`

SetInstruments sets Instruments field to given value.

### HasInstruments

`func (o *BrokerageInstrumentsResponse) HasInstruments() bool`

HasInstruments returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


