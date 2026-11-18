# Activity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TransactionId** | **NullableString** | Brokerage transaction reference, when available. Related transactions such as a fill and a fee can share this value. | 
**Type** | **string** | Best-effort activity classification. A reported option action takes precedence over its base type. Common values include BUY, SELL, BUY_TO_OPEN, BUY_TO_CLOSE, SELL_TO_OPEN, SELL_TO_CLOSE, DIVIDEND, INTEREST, CONTRIBUTION, WITHDRAWAL, TRANSFER and FEE. Clients must accept unfamiliar values.  | 
**Date** | **time.Time** | Recorded trade date and time in UTC. Precision depends on what the brokerage supplies. | 
**Description** | **string** | Brokerage activity description, including an unresolved brokerage symbol&#39;s name when available. | 
**Instrument** | [**NullableInstrumentNullable**](InstrumentNullable.md) |  | 
**PricedIn** | [**NullablePricedInInstrumentNullable**](PricedInInstrumentNullable.md) |  | 
**Amount** | **float64** | Signed amount recorded for the transaction. Use this value directly. Price, units and fees may be insufficient to reconstruct it. | 
**Price** | **NullableFloat64** | Recorded unit price. For options this is the price per underlying share. Some missing brokerage prices are stored as zero. | 
**Units** | **float64** | Signed quantity recorded for the transaction. For options the quantity counts contracts. | 
**Fee** | **float64** | Recorded fee. Some missing brokerage fees are stored as zero. | 
**FxRate** | **NullableFloat64** | Foreign exchange rate recorded for the transaction, when available. | 

## Methods

### NewActivity

`func NewActivity(transactionId NullableString, type_ string, date time.Time, description string, instrument NullableInstrumentNullable, pricedIn NullablePricedInInstrumentNullable, amount float64, price NullableFloat64, units float64, fee float64, fxRate NullableFloat64, ) *Activity`

NewActivity instantiates a new Activity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewActivityWithDefaults

`func NewActivityWithDefaults() *Activity`

NewActivityWithDefaults instantiates a new Activity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTransactionId

`func (o *Activity) GetTransactionId() string`

GetTransactionId returns the TransactionId field if non-nil, zero value otherwise.

### GetTransactionIdOk

`func (o *Activity) GetTransactionIdOk() (*string, bool)`

GetTransactionIdOk returns a tuple with the TransactionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactionId

`func (o *Activity) SetTransactionId(v string)`

SetTransactionId sets TransactionId field to given value.


### SetTransactionIdNil

`func (o *Activity) SetTransactionIdNil(b bool)`

 SetTransactionIdNil sets the value for TransactionId to be an explicit nil

### UnsetTransactionId
`func (o *Activity) UnsetTransactionId()`

UnsetTransactionId ensures that no value is present for TransactionId, not even an explicit nil
### GetType

`func (o *Activity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Activity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Activity) SetType(v string)`

SetType sets Type field to given value.


### GetDate

`func (o *Activity) GetDate() time.Time`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *Activity) GetDateOk() (*time.Time, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *Activity) SetDate(v time.Time)`

SetDate sets Date field to given value.


### GetDescription

`func (o *Activity) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Activity) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Activity) SetDescription(v string)`

SetDescription sets Description field to given value.


### GetInstrument

`func (o *Activity) GetInstrument() InstrumentNullable`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *Activity) GetInstrumentOk() (*InstrumentNullable, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *Activity) SetInstrument(v InstrumentNullable)`

SetInstrument sets Instrument field to given value.


### SetInstrumentNil

`func (o *Activity) SetInstrumentNil(b bool)`

 SetInstrumentNil sets the value for Instrument to be an explicit nil

### UnsetInstrument
`func (o *Activity) UnsetInstrument()`

UnsetInstrument ensures that no value is present for Instrument, not even an explicit nil
### GetPricedIn

`func (o *Activity) GetPricedIn() PricedInInstrumentNullable`

GetPricedIn returns the PricedIn field if non-nil, zero value otherwise.

### GetPricedInOk

`func (o *Activity) GetPricedInOk() (*PricedInInstrumentNullable, bool)`

GetPricedInOk returns a tuple with the PricedIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricedIn

`func (o *Activity) SetPricedIn(v PricedInInstrumentNullable)`

SetPricedIn sets PricedIn field to given value.


### SetPricedInNil

`func (o *Activity) SetPricedInNil(b bool)`

 SetPricedInNil sets the value for PricedIn to be an explicit nil

### UnsetPricedIn
`func (o *Activity) UnsetPricedIn()`

UnsetPricedIn ensures that no value is present for PricedIn, not even an explicit nil
### GetAmount

`func (o *Activity) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *Activity) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *Activity) SetAmount(v float64)`

SetAmount sets Amount field to given value.


### GetPrice

`func (o *Activity) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Activity) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Activity) SetPrice(v float64)`

SetPrice sets Price field to given value.


### SetPriceNil

`func (o *Activity) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *Activity) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetUnits

`func (o *Activity) GetUnits() float64`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *Activity) GetUnitsOk() (*float64, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *Activity) SetUnits(v float64)`

SetUnits sets Units field to given value.


### GetFee

`func (o *Activity) GetFee() float64`

GetFee returns the Fee field if non-nil, zero value otherwise.

### GetFeeOk

`func (o *Activity) GetFeeOk() (*float64, bool)`

GetFeeOk returns a tuple with the Fee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFee

`func (o *Activity) SetFee(v float64)`

SetFee sets Fee field to given value.


### GetFxRate

`func (o *Activity) GetFxRate() float64`

GetFxRate returns the FxRate field if non-nil, zero value otherwise.

### GetFxRateOk

`func (o *Activity) GetFxRateOk() (*float64, bool)`

GetFxRateOk returns a tuple with the FxRate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFxRate

`func (o *Activity) SetFxRate(v float64)`

SetFxRate sets FxRate field to given value.


### SetFxRateNil

`func (o *Activity) SetFxRateNil(b bool)`

 SetFxRateNil sets the value for FxRate to be an explicit nil

### UnsetFxRate
`func (o *Activity) UnsetFxRate()`

UnsetFxRate ensures that no value is present for FxRate, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


