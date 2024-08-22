# ManualTradeSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageSymbolId** | Pointer to **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 
**UniversalSymbolId** | Pointer to **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**LocalId** | Pointer to **string** | This field is deprecated and should not be used. | [optional] 
**Description** | Pointer to **NullableString** | This field is deprecated and should not be used. | [optional] 
**Symbol** | Pointer to **string** | This field is deprecated and should not be used. | [optional] 

## Methods

### NewManualTradeSymbol

`func NewManualTradeSymbol() *ManualTradeSymbol`

NewManualTradeSymbol instantiates a new ManualTradeSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeSymbolWithDefaults

`func NewManualTradeSymbolWithDefaults() *ManualTradeSymbol`

NewManualTradeSymbolWithDefaults instantiates a new ManualTradeSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageSymbolId

`func (o *ManualTradeSymbol) GetBrokerageSymbolId() string`

GetBrokerageSymbolId returns the BrokerageSymbolId field if non-nil, zero value otherwise.

### GetBrokerageSymbolIdOk

`func (o *ManualTradeSymbol) GetBrokerageSymbolIdOk() (*string, bool)`

GetBrokerageSymbolIdOk returns a tuple with the BrokerageSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageSymbolId

`func (o *ManualTradeSymbol) SetBrokerageSymbolId(v string)`

SetBrokerageSymbolId sets BrokerageSymbolId field to given value.

### HasBrokerageSymbolId

`func (o *ManualTradeSymbol) HasBrokerageSymbolId() bool`

HasBrokerageSymbolId returns a boolean if a field has been set.

### GetUniversalSymbolId

`func (o *ManualTradeSymbol) GetUniversalSymbolId() string`

GetUniversalSymbolId returns the UniversalSymbolId field if non-nil, zero value otherwise.

### GetUniversalSymbolIdOk

`func (o *ManualTradeSymbol) GetUniversalSymbolIdOk() (*string, bool)`

GetUniversalSymbolIdOk returns a tuple with the UniversalSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbolId

`func (o *ManualTradeSymbol) SetUniversalSymbolId(v string)`

SetUniversalSymbolId sets UniversalSymbolId field to given value.

### HasUniversalSymbolId

`func (o *ManualTradeSymbol) HasUniversalSymbolId() bool`

HasUniversalSymbolId returns a boolean if a field has been set.

### GetCurrency

`func (o *ManualTradeSymbol) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *ManualTradeSymbol) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *ManualTradeSymbol) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *ManualTradeSymbol) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetLocalId

`func (o *ManualTradeSymbol) GetLocalId() string`

GetLocalId returns the LocalId field if non-nil, zero value otherwise.

### GetLocalIdOk

`func (o *ManualTradeSymbol) GetLocalIdOk() (*string, bool)`

GetLocalIdOk returns a tuple with the LocalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalId

`func (o *ManualTradeSymbol) SetLocalId(v string)`

SetLocalId sets LocalId field to given value.

### HasLocalId

`func (o *ManualTradeSymbol) HasLocalId() bool`

HasLocalId returns a boolean if a field has been set.

### GetDescription

`func (o *ManualTradeSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *ManualTradeSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *ManualTradeSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *ManualTradeSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *ManualTradeSymbol) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *ManualTradeSymbol) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetSymbol

`func (o *ManualTradeSymbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *ManualTradeSymbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *ManualTradeSymbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *ManualTradeSymbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


