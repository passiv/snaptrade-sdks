# AccountOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**Status** | [**AccountOrderRecordStatusV2**](AccountOrderRecordStatusV2.md) |  | 
**OrderType** | [**OrderTypeConfiguration**](OrderTypeConfiguration.md) |  | 
**TimeInForce** | **string** | How long the order remains active. Brokerage values that cannot be mapped to this list are returned as &#x60;OTHER&#x60;.   - &#x60;DAY&#x60; - valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled.   - &#x60;FOK&#x60; - Fill Or Kill.   - &#x60;IOC&#x60; - Immediate Or Cancel.   - &#x60;GTD&#x60; - Good Til Date; see &#x60;expiry_date&#x60;.   - &#x60;MOO&#x60; - Market On Open.   - &#x60;EHP&#x60; - Extended Hours P.M.   - &#x60;EHA&#x60; - Extended Hours A.M.   - &#x60;OTHER&#x60; - the brokerage reported a value outside this list.  | 
**ExpiryDate** | Pointer to **NullableTime** | When the order expires, for orders with a &#x60;time_in_force&#x60; of &#x60;GTD&#x60;. | [optional] 
**PriceCurrency** | Pointer to **NullableString** | ISO-4217 currency code the order prices are denominated in. For crypto pairs this is the quote asset (for example &#x60;USDC&#x60; for &#x60;ETH-USDC&#x60;). | [optional] 
**PriceEffect** | **string** | Direction of the net order price. CREDIT means cash is received, DEBIT means cash is paid, EVEN means the net price is zero, and UNKNOWN means the direction could not be determined. | 
**TotalQuantity** | Pointer to **NullableFloat64** | Total quantity requested. For multi-leg orders this is the number of spreads, not the sum of leg quantities. | [optional] 
**FilledQuantity** | Pointer to **NullableFloat64** | Quantity filled so far. | [optional] 
**CanceledQuantity** | Pointer to **NullableFloat64** | Quantity canceled. | [optional] 
**OpenQuantity** | Pointer to **NullableFloat64** | Quantity still open (not yet filled or canceled). | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat64** | Average execution price. Per unit for single-leg orders; net price per spread for multi-leg orders. | [optional] 
**TimePlaced** | Pointer to **NullableTime** | The time the order was submitted to the brokerage, when the brokerage reports it. | [optional] 
**TimeUpdated** | Pointer to **NullableTime** | The time the order was last updated at the brokerage, when available. | [optional] 
**TimeExecuted** | Pointer to **NullableTime** | The time the order was executed, when available. | [optional] 
**Group** | Pointer to [**NullableAccountOrderGroupNullable**](AccountOrderGroupNullable.md) |  | [optional] 
**Legs** | [**[]AccountOrderLeg**](AccountOrderLeg.md) | The legs that make up the order. Always has at least one entry. | 

## Methods

### NewAccountOrder

`func NewAccountOrder(brokerageOrderId string, status AccountOrderRecordStatusV2, orderType OrderTypeConfiguration, timeInForce string, priceEffect string, legs []AccountOrderLeg, ) *AccountOrder`

NewAccountOrder instantiates a new AccountOrder object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderWithDefaults

`func NewAccountOrderWithDefaults() *AccountOrder`

NewAccountOrderWithDefaults instantiates a new AccountOrder object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *AccountOrder) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *AccountOrder) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *AccountOrder) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.


### GetStatus

`func (o *AccountOrder) GetStatus() AccountOrderRecordStatusV2`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AccountOrder) GetStatusOk() (*AccountOrderRecordStatusV2, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AccountOrder) SetStatus(v AccountOrderRecordStatusV2)`

SetStatus sets Status field to given value.


### GetOrderType

`func (o *AccountOrder) GetOrderType() OrderTypeConfiguration`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *AccountOrder) GetOrderTypeOk() (*OrderTypeConfiguration, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *AccountOrder) SetOrderType(v OrderTypeConfiguration)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *AccountOrder) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *AccountOrder) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *AccountOrder) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.


### GetExpiryDate

`func (o *AccountOrder) GetExpiryDate() time.Time`

GetExpiryDate returns the ExpiryDate field if non-nil, zero value otherwise.

### GetExpiryDateOk

`func (o *AccountOrder) GetExpiryDateOk() (*time.Time, bool)`

GetExpiryDateOk returns a tuple with the ExpiryDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiryDate

`func (o *AccountOrder) SetExpiryDate(v time.Time)`

SetExpiryDate sets ExpiryDate field to given value.

### HasExpiryDate

`func (o *AccountOrder) HasExpiryDate() bool`

HasExpiryDate returns a boolean if a field has been set.

### SetExpiryDateNil

`func (o *AccountOrder) SetExpiryDateNil(b bool)`

 SetExpiryDateNil sets the value for ExpiryDate to be an explicit nil

### UnsetExpiryDate
`func (o *AccountOrder) UnsetExpiryDate()`

UnsetExpiryDate ensures that no value is present for ExpiryDate, not even an explicit nil
### GetPriceCurrency

`func (o *AccountOrder) GetPriceCurrency() string`

GetPriceCurrency returns the PriceCurrency field if non-nil, zero value otherwise.

### GetPriceCurrencyOk

`func (o *AccountOrder) GetPriceCurrencyOk() (*string, bool)`

GetPriceCurrencyOk returns a tuple with the PriceCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceCurrency

`func (o *AccountOrder) SetPriceCurrency(v string)`

SetPriceCurrency sets PriceCurrency field to given value.

### HasPriceCurrency

`func (o *AccountOrder) HasPriceCurrency() bool`

HasPriceCurrency returns a boolean if a field has been set.

### SetPriceCurrencyNil

`func (o *AccountOrder) SetPriceCurrencyNil(b bool)`

 SetPriceCurrencyNil sets the value for PriceCurrency to be an explicit nil

### UnsetPriceCurrency
`func (o *AccountOrder) UnsetPriceCurrency()`

UnsetPriceCurrency ensures that no value is present for PriceCurrency, not even an explicit nil
### GetPriceEffect

`func (o *AccountOrder) GetPriceEffect() string`

GetPriceEffect returns the PriceEffect field if non-nil, zero value otherwise.

### GetPriceEffectOk

`func (o *AccountOrder) GetPriceEffectOk() (*string, bool)`

GetPriceEffectOk returns a tuple with the PriceEffect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceEffect

`func (o *AccountOrder) SetPriceEffect(v string)`

SetPriceEffect sets PriceEffect field to given value.


### GetTotalQuantity

`func (o *AccountOrder) GetTotalQuantity() float64`

GetTotalQuantity returns the TotalQuantity field if non-nil, zero value otherwise.

### GetTotalQuantityOk

`func (o *AccountOrder) GetTotalQuantityOk() (*float64, bool)`

GetTotalQuantityOk returns a tuple with the TotalQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalQuantity

`func (o *AccountOrder) SetTotalQuantity(v float64)`

SetTotalQuantity sets TotalQuantity field to given value.

### HasTotalQuantity

`func (o *AccountOrder) HasTotalQuantity() bool`

HasTotalQuantity returns a boolean if a field has been set.

### SetTotalQuantityNil

`func (o *AccountOrder) SetTotalQuantityNil(b bool)`

 SetTotalQuantityNil sets the value for TotalQuantity to be an explicit nil

### UnsetTotalQuantity
`func (o *AccountOrder) UnsetTotalQuantity()`

UnsetTotalQuantity ensures that no value is present for TotalQuantity, not even an explicit nil
### GetFilledQuantity

`func (o *AccountOrder) GetFilledQuantity() float64`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *AccountOrder) GetFilledQuantityOk() (*float64, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *AccountOrder) SetFilledQuantity(v float64)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *AccountOrder) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### SetFilledQuantityNil

`func (o *AccountOrder) SetFilledQuantityNil(b bool)`

 SetFilledQuantityNil sets the value for FilledQuantity to be an explicit nil

### UnsetFilledQuantity
`func (o *AccountOrder) UnsetFilledQuantity()`

UnsetFilledQuantity ensures that no value is present for FilledQuantity, not even an explicit nil
### GetCanceledQuantity

`func (o *AccountOrder) GetCanceledQuantity() float64`

GetCanceledQuantity returns the CanceledQuantity field if non-nil, zero value otherwise.

### GetCanceledQuantityOk

`func (o *AccountOrder) GetCanceledQuantityOk() (*float64, bool)`

GetCanceledQuantityOk returns a tuple with the CanceledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanceledQuantity

`func (o *AccountOrder) SetCanceledQuantity(v float64)`

SetCanceledQuantity sets CanceledQuantity field to given value.

### HasCanceledQuantity

`func (o *AccountOrder) HasCanceledQuantity() bool`

HasCanceledQuantity returns a boolean if a field has been set.

### SetCanceledQuantityNil

`func (o *AccountOrder) SetCanceledQuantityNil(b bool)`

 SetCanceledQuantityNil sets the value for CanceledQuantity to be an explicit nil

### UnsetCanceledQuantity
`func (o *AccountOrder) UnsetCanceledQuantity()`

UnsetCanceledQuantity ensures that no value is present for CanceledQuantity, not even an explicit nil
### GetOpenQuantity

`func (o *AccountOrder) GetOpenQuantity() float64`

GetOpenQuantity returns the OpenQuantity field if non-nil, zero value otherwise.

### GetOpenQuantityOk

`func (o *AccountOrder) GetOpenQuantityOk() (*float64, bool)`

GetOpenQuantityOk returns a tuple with the OpenQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenQuantity

`func (o *AccountOrder) SetOpenQuantity(v float64)`

SetOpenQuantity sets OpenQuantity field to given value.

### HasOpenQuantity

`func (o *AccountOrder) HasOpenQuantity() bool`

HasOpenQuantity returns a boolean if a field has been set.

### SetOpenQuantityNil

`func (o *AccountOrder) SetOpenQuantityNil(b bool)`

 SetOpenQuantityNil sets the value for OpenQuantity to be an explicit nil

### UnsetOpenQuantity
`func (o *AccountOrder) UnsetOpenQuantity()`

UnsetOpenQuantity ensures that no value is present for OpenQuantity, not even an explicit nil
### GetExecutionPrice

`func (o *AccountOrder) GetExecutionPrice() float64`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *AccountOrder) GetExecutionPriceOk() (*float64, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *AccountOrder) SetExecutionPrice(v float64)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *AccountOrder) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *AccountOrder) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *AccountOrder) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetTimePlaced

`func (o *AccountOrder) GetTimePlaced() time.Time`

GetTimePlaced returns the TimePlaced field if non-nil, zero value otherwise.

### GetTimePlacedOk

`func (o *AccountOrder) GetTimePlacedOk() (*time.Time, bool)`

GetTimePlacedOk returns a tuple with the TimePlaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePlaced

`func (o *AccountOrder) SetTimePlaced(v time.Time)`

SetTimePlaced sets TimePlaced field to given value.

### HasTimePlaced

`func (o *AccountOrder) HasTimePlaced() bool`

HasTimePlaced returns a boolean if a field has been set.

### SetTimePlacedNil

`func (o *AccountOrder) SetTimePlacedNil(b bool)`

 SetTimePlacedNil sets the value for TimePlaced to be an explicit nil

### UnsetTimePlaced
`func (o *AccountOrder) UnsetTimePlaced()`

UnsetTimePlaced ensures that no value is present for TimePlaced, not even an explicit nil
### GetTimeUpdated

`func (o *AccountOrder) GetTimeUpdated() time.Time`

GetTimeUpdated returns the TimeUpdated field if non-nil, zero value otherwise.

### GetTimeUpdatedOk

`func (o *AccountOrder) GetTimeUpdatedOk() (*time.Time, bool)`

GetTimeUpdatedOk returns a tuple with the TimeUpdated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeUpdated

`func (o *AccountOrder) SetTimeUpdated(v time.Time)`

SetTimeUpdated sets TimeUpdated field to given value.

### HasTimeUpdated

`func (o *AccountOrder) HasTimeUpdated() bool`

HasTimeUpdated returns a boolean if a field has been set.

### SetTimeUpdatedNil

`func (o *AccountOrder) SetTimeUpdatedNil(b bool)`

 SetTimeUpdatedNil sets the value for TimeUpdated to be an explicit nil

### UnsetTimeUpdated
`func (o *AccountOrder) UnsetTimeUpdated()`

UnsetTimeUpdated ensures that no value is present for TimeUpdated, not even an explicit nil
### GetTimeExecuted

`func (o *AccountOrder) GetTimeExecuted() time.Time`

GetTimeExecuted returns the TimeExecuted field if non-nil, zero value otherwise.

### GetTimeExecutedOk

`func (o *AccountOrder) GetTimeExecutedOk() (*time.Time, bool)`

GetTimeExecutedOk returns a tuple with the TimeExecuted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExecuted

`func (o *AccountOrder) SetTimeExecuted(v time.Time)`

SetTimeExecuted sets TimeExecuted field to given value.

### HasTimeExecuted

`func (o *AccountOrder) HasTimeExecuted() bool`

HasTimeExecuted returns a boolean if a field has been set.

### SetTimeExecutedNil

`func (o *AccountOrder) SetTimeExecutedNil(b bool)`

 SetTimeExecutedNil sets the value for TimeExecuted to be an explicit nil

### UnsetTimeExecuted
`func (o *AccountOrder) UnsetTimeExecuted()`

UnsetTimeExecuted ensures that no value is present for TimeExecuted, not even an explicit nil
### GetGroup

`func (o *AccountOrder) GetGroup() AccountOrderGroupNullable`

GetGroup returns the Group field if non-nil, zero value otherwise.

### GetGroupOk

`func (o *AccountOrder) GetGroupOk() (*AccountOrderGroupNullable, bool)`

GetGroupOk returns a tuple with the Group field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroup

`func (o *AccountOrder) SetGroup(v AccountOrderGroupNullable)`

SetGroup sets Group field to given value.

### HasGroup

`func (o *AccountOrder) HasGroup() bool`

HasGroup returns a boolean if a field has been set.

### SetGroupNil

`func (o *AccountOrder) SetGroupNil(b bool)`

 SetGroupNil sets the value for Group to be an explicit nil

### UnsetGroup
`func (o *AccountOrder) UnsetGroup()`

UnsetGroup ensures that no value is present for Group, not even an explicit nil
### GetLegs

`func (o *AccountOrder) GetLegs() []AccountOrderLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *AccountOrder) GetLegsOk() (*[]AccountOrderLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *AccountOrder) SetLegs(v []AccountOrderLeg)`

SetLegs sets Legs field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


