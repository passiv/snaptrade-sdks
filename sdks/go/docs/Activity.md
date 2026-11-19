# Activity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TransactionId** | **NullableString** | A stable and unique transaction id when available | 
**Type** | **string** | A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;BUY_TO_OPEN&#x60; - Option bought to open a long position.   - &#x60;BUY_TO_CLOSE&#x60; - Option bought to close a short position.   - &#x60;SELL_TO_OPEN&#x60; - Option sold to open a short position.   - &#x60;SELL_TO_CLOSE&#x60; - Option sold to close a long position.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;SUBSTITUTE_DIVIDEND&#x60; - Payment in lieu of a dividend.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;STOCK_DIVIDEND&#x60; - A type of dividend where a company distributes shares instead of cash   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;TAX&#x60; - A tax related fee.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event.   - &#x60;TRANSFER&#x60; - Transfer of asset(s) from one account to another.   - &#x60;EXTERNAL_ASSET_TRANSFER_IN&#x60; - Incoming transfer of an asset from an external account to this account.   - &#x60;EXTERNAL_ASSET_TRANSFER_OUT&#x60; - Outgoing transfer of an asset from this account to an external account.   - &#x60;SPLIT&#x60; - A stock share split.   - &#x60;ADJUSTMENT&#x60; - A one time adjustment of the account&#39;s cash balance or shares of an asset  | 
**Date** | **time.Time** | Recorded date and time in UTC. Precision depends on what the brokerage supplies. | 
**Description** | **string** | Brokerage activity description, including an unresolved brokerage symbol&#39;s name when available. | 
**Instrument** | [**NullableInstrumentNullable**](InstrumentNullable.md) |  | 
**PricedIn** | [**NullablePricedInInstrumentNullable**](PricedInInstrumentNullable.md) |  | 
**Amount** | **float64** | The amount of the transaction denominated in &#x60;priced_in&#x60;. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount. | 
**Price** | **NullableFloat64** | The price of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. For option transactions, this represents the price per share of the option contract. | 
**Units** | **float64** | The number of units of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. In general, BUYs result in positive units while SELLs result in negative due to the shares leaving the account | 
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


