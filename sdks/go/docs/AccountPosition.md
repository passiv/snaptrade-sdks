# AccountPosition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**Instrument**](Instrument.md) |  | 
**Units** | Pointer to **NullableFloat64** | The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions. | [optional] 
**Price** | Pointer to **NullableFloat64** | Last known market price for the position. | [optional] 
**CostBasis** | Pointer to **NullableFloat64** | Book price or average purchase price for the position. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the position &#x60;price&#x60; and &#x60;cost_basis&#x60;. | [optional] 
**CashEquivalent** | Pointer to **bool** | Present for mutual fund positions that are also counted in cash balance or buying power. | [optional] 
**TaxLots** | Pointer to [**[]TaxLot**](TaxLot.md) | List of tax lots for the given position (disabled by default, only available on paid plans, contact support if needed) | [optional] 

## Methods

### NewAccountPosition

`func NewAccountPosition(instrument Instrument, ) *AccountPosition`

NewAccountPosition instantiates a new AccountPosition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountPositionWithDefaults

`func NewAccountPositionWithDefaults() *AccountPosition`

NewAccountPositionWithDefaults instantiates a new AccountPosition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstrument

`func (o *AccountPosition) GetInstrument() Instrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *AccountPosition) GetInstrumentOk() (*Instrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *AccountPosition) SetInstrument(v Instrument)`

SetInstrument sets Instrument field to given value.


### GetUnits

`func (o *AccountPosition) GetUnits() float64`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *AccountPosition) GetUnitsOk() (*float64, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *AccountPosition) SetUnits(v float64)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *AccountPosition) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *AccountPosition) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *AccountPosition) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil
### GetPrice

`func (o *AccountPosition) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *AccountPosition) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *AccountPosition) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *AccountPosition) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *AccountPosition) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *AccountPosition) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetCostBasis

`func (o *AccountPosition) GetCostBasis() float64`

GetCostBasis returns the CostBasis field if non-nil, zero value otherwise.

### GetCostBasisOk

`func (o *AccountPosition) GetCostBasisOk() (*float64, bool)`

GetCostBasisOk returns a tuple with the CostBasis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostBasis

`func (o *AccountPosition) SetCostBasis(v float64)`

SetCostBasis sets CostBasis field to given value.

### HasCostBasis

`func (o *AccountPosition) HasCostBasis() bool`

HasCostBasis returns a boolean if a field has been set.

### SetCostBasisNil

`func (o *AccountPosition) SetCostBasisNil(b bool)`

 SetCostBasisNil sets the value for CostBasis to be an explicit nil

### UnsetCostBasis
`func (o *AccountPosition) UnsetCostBasis()`

UnsetCostBasis ensures that no value is present for CostBasis, not even an explicit nil
### GetCurrency

`func (o *AccountPosition) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountPosition) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountPosition) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *AccountPosition) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *AccountPosition) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *AccountPosition) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetCashEquivalent

`func (o *AccountPosition) GetCashEquivalent() bool`

GetCashEquivalent returns the CashEquivalent field if non-nil, zero value otherwise.

### GetCashEquivalentOk

`func (o *AccountPosition) GetCashEquivalentOk() (*bool, bool)`

GetCashEquivalentOk returns a tuple with the CashEquivalent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashEquivalent

`func (o *AccountPosition) SetCashEquivalent(v bool)`

SetCashEquivalent sets CashEquivalent field to given value.

### HasCashEquivalent

`func (o *AccountPosition) HasCashEquivalent() bool`

HasCashEquivalent returns a boolean if a field has been set.

### GetTaxLots

`func (o *AccountPosition) GetTaxLots() []TaxLot`

GetTaxLots returns the TaxLots field if non-nil, zero value otherwise.

### GetTaxLotsOk

`func (o *AccountPosition) GetTaxLotsOk() (*[]TaxLot, bool)`

GetTaxLotsOk returns a tuple with the TaxLots field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaxLots

`func (o *AccountPosition) SetTaxLots(v []TaxLot)`

SetTaxLots sets TaxLots field to given value.

### HasTaxLots

`func (o *AccountPosition) HasTaxLots() bool`

HasTaxLots returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


