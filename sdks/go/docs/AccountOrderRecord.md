# AccountOrderRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | Pointer to **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | [optional] 
**Status** | Pointer to [**AccountOrderRecordStatus**](AccountOrderRecordStatus.md) |  | [optional] 
**UniversalSymbol** | Pointer to [**AccountOrderRecordUniversalSymbol**](AccountOrderRecordUniversalSymbol.md) |  | [optional] 
**OptionSymbol** | Pointer to [**AccountOrderRecordOptionSymbol**](AccountOrderRecordOptionSymbol.md) |  | [optional] 
**Action** | Pointer to **string** | The action describes the intent or side of a trade. This is usually &#x60;BUY&#x60; or &#x60;SELL&#x60; but can include other potential values like the following depending on the specific brokerage.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_OPEN   - BUY_CLOSE   - SELL_OPEN   - SELL_CLOSE  | [optional] 
**TotalQuantity** | Pointer to **NullableFloat32** | The total number of shares or contracts of the order. This should be the sum of the filled, canceled, and open quantities. Can be a decimal number for fractional shares. | [optional] 
**OpenQuantity** | Pointer to **NullableFloat32** | The number of shares or contracts that are still open (waiting for execution). Can be a decimal number for fractional shares. | [optional] 
**CanceledQuantity** | Pointer to **NullableFloat32** | The number of shares or contracts that have been canceled. Can be a decimal number for fractional shares. | [optional] 
**FilledQuantity** | Pointer to **NullableFloat32** | The number of shares or contracts that have been filled. Can be a decimal number for fractional shares. | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat32** | The price at which the order was executed. | [optional] 
**LimitPrice** | Pointer to **NullableFloat32** | The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**StopPrice** | Pointer to **NullableFloat32** | The stop price is the price at which a stop order is triggered. Should only apply to &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**OrderType** | Pointer to **NullableString** | The type of order placed. The most common values are &#x60;Market&#x60;, &#x60;Limit&#x60;, &#x60;Stop&#x60;, and &#x60;StopLimit&#x60;. We try our best to map brokerage order types to these values. When mapping fails, we will return the brokerage&#39;s order type value. | [optional] 
**TimeInForce** | Pointer to **string** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage&#39;s time in force value.   - &#x60;Day&#x60; - Day. The order is valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.   - &#x60;MOO&#x60; - Market On Open. The order is to be executed at the day&#39;s opening price.   - &#x60;EHP&#x60; - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close.  | [optional] 
**TimePlaced** | Pointer to **time.Time** | The time the order was placed. This is the time the order was submitted to the brokerage. | [optional] 
**TimeUpdated** | Pointer to **NullableTime** | The time the order was last updated in the brokerage system. This value is not always available from the brokerage. | [optional] 
**TimeExecuted** | Pointer to **NullableTime** | The time the order was executed in the brokerage system. This value is not always available from the brokerage. | [optional] 
**ExpiryDate** | Pointer to **NullableTime** | The time the order expires. This value is not always available from the brokerage. | [optional] 
**Symbol** | Pointer to **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 

## Methods

### NewAccountOrderRecord

`func NewAccountOrderRecord() *AccountOrderRecord`

NewAccountOrderRecord instantiates a new AccountOrderRecord object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderRecordWithDefaults

`func NewAccountOrderRecordWithDefaults() *AccountOrderRecord`

NewAccountOrderRecordWithDefaults instantiates a new AccountOrderRecord object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *AccountOrderRecord) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *AccountOrderRecord) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *AccountOrderRecord) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.

### HasBrokerageOrderId

`func (o *AccountOrderRecord) HasBrokerageOrderId() bool`

HasBrokerageOrderId returns a boolean if a field has been set.

### GetStatus

`func (o *AccountOrderRecord) GetStatus() AccountOrderRecordStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AccountOrderRecord) GetStatusOk() (*AccountOrderRecordStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AccountOrderRecord) SetStatus(v AccountOrderRecordStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AccountOrderRecord) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetUniversalSymbol

`func (o *AccountOrderRecord) GetUniversalSymbol() AccountOrderRecordUniversalSymbol`

GetUniversalSymbol returns the UniversalSymbol field if non-nil, zero value otherwise.

### GetUniversalSymbolOk

`func (o *AccountOrderRecord) GetUniversalSymbolOk() (*AccountOrderRecordUniversalSymbol, bool)`

GetUniversalSymbolOk returns a tuple with the UniversalSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbol

`func (o *AccountOrderRecord) SetUniversalSymbol(v AccountOrderRecordUniversalSymbol)`

SetUniversalSymbol sets UniversalSymbol field to given value.

### HasUniversalSymbol

`func (o *AccountOrderRecord) HasUniversalSymbol() bool`

HasUniversalSymbol returns a boolean if a field has been set.

### GetOptionSymbol

`func (o *AccountOrderRecord) GetOptionSymbol() AccountOrderRecordOptionSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *AccountOrderRecord) GetOptionSymbolOk() (*AccountOrderRecordOptionSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *AccountOrderRecord) SetOptionSymbol(v AccountOrderRecordOptionSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *AccountOrderRecord) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### GetAction

`func (o *AccountOrderRecord) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AccountOrderRecord) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AccountOrderRecord) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AccountOrderRecord) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetTotalQuantity

`func (o *AccountOrderRecord) GetTotalQuantity() float32`

GetTotalQuantity returns the TotalQuantity field if non-nil, zero value otherwise.

### GetTotalQuantityOk

`func (o *AccountOrderRecord) GetTotalQuantityOk() (*float32, bool)`

GetTotalQuantityOk returns a tuple with the TotalQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalQuantity

`func (o *AccountOrderRecord) SetTotalQuantity(v float32)`

SetTotalQuantity sets TotalQuantity field to given value.

### HasTotalQuantity

`func (o *AccountOrderRecord) HasTotalQuantity() bool`

HasTotalQuantity returns a boolean if a field has been set.

### SetTotalQuantityNil

`func (o *AccountOrderRecord) SetTotalQuantityNil(b bool)`

 SetTotalQuantityNil sets the value for TotalQuantity to be an explicit nil

### UnsetTotalQuantity
`func (o *AccountOrderRecord) UnsetTotalQuantity()`

UnsetTotalQuantity ensures that no value is present for TotalQuantity, not even an explicit nil
### GetOpenQuantity

`func (o *AccountOrderRecord) GetOpenQuantity() float32`

GetOpenQuantity returns the OpenQuantity field if non-nil, zero value otherwise.

### GetOpenQuantityOk

`func (o *AccountOrderRecord) GetOpenQuantityOk() (*float32, bool)`

GetOpenQuantityOk returns a tuple with the OpenQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenQuantity

`func (o *AccountOrderRecord) SetOpenQuantity(v float32)`

SetOpenQuantity sets OpenQuantity field to given value.

### HasOpenQuantity

`func (o *AccountOrderRecord) HasOpenQuantity() bool`

HasOpenQuantity returns a boolean if a field has been set.

### SetOpenQuantityNil

`func (o *AccountOrderRecord) SetOpenQuantityNil(b bool)`

 SetOpenQuantityNil sets the value for OpenQuantity to be an explicit nil

### UnsetOpenQuantity
`func (o *AccountOrderRecord) UnsetOpenQuantity()`

UnsetOpenQuantity ensures that no value is present for OpenQuantity, not even an explicit nil
### GetCanceledQuantity

`func (o *AccountOrderRecord) GetCanceledQuantity() float32`

GetCanceledQuantity returns the CanceledQuantity field if non-nil, zero value otherwise.

### GetCanceledQuantityOk

`func (o *AccountOrderRecord) GetCanceledQuantityOk() (*float32, bool)`

GetCanceledQuantityOk returns a tuple with the CanceledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanceledQuantity

`func (o *AccountOrderRecord) SetCanceledQuantity(v float32)`

SetCanceledQuantity sets CanceledQuantity field to given value.

### HasCanceledQuantity

`func (o *AccountOrderRecord) HasCanceledQuantity() bool`

HasCanceledQuantity returns a boolean if a field has been set.

### SetCanceledQuantityNil

`func (o *AccountOrderRecord) SetCanceledQuantityNil(b bool)`

 SetCanceledQuantityNil sets the value for CanceledQuantity to be an explicit nil

### UnsetCanceledQuantity
`func (o *AccountOrderRecord) UnsetCanceledQuantity()`

UnsetCanceledQuantity ensures that no value is present for CanceledQuantity, not even an explicit nil
### GetFilledQuantity

`func (o *AccountOrderRecord) GetFilledQuantity() float32`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *AccountOrderRecord) GetFilledQuantityOk() (*float32, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *AccountOrderRecord) SetFilledQuantity(v float32)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *AccountOrderRecord) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### SetFilledQuantityNil

`func (o *AccountOrderRecord) SetFilledQuantityNil(b bool)`

 SetFilledQuantityNil sets the value for FilledQuantity to be an explicit nil

### UnsetFilledQuantity
`func (o *AccountOrderRecord) UnsetFilledQuantity()`

UnsetFilledQuantity ensures that no value is present for FilledQuantity, not even an explicit nil
### GetExecutionPrice

`func (o *AccountOrderRecord) GetExecutionPrice() float32`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *AccountOrderRecord) GetExecutionPriceOk() (*float32, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *AccountOrderRecord) SetExecutionPrice(v float32)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *AccountOrderRecord) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *AccountOrderRecord) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *AccountOrderRecord) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetLimitPrice

`func (o *AccountOrderRecord) GetLimitPrice() float32`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *AccountOrderRecord) GetLimitPriceOk() (*float32, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *AccountOrderRecord) SetLimitPrice(v float32)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *AccountOrderRecord) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *AccountOrderRecord) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *AccountOrderRecord) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetStopPrice

`func (o *AccountOrderRecord) GetStopPrice() float32`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *AccountOrderRecord) GetStopPriceOk() (*float32, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *AccountOrderRecord) SetStopPrice(v float32)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *AccountOrderRecord) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *AccountOrderRecord) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *AccountOrderRecord) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
### GetOrderType

`func (o *AccountOrderRecord) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *AccountOrderRecord) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *AccountOrderRecord) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *AccountOrderRecord) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### SetOrderTypeNil

`func (o *AccountOrderRecord) SetOrderTypeNil(b bool)`

 SetOrderTypeNil sets the value for OrderType to be an explicit nil

### UnsetOrderType
`func (o *AccountOrderRecord) UnsetOrderType()`

UnsetOrderType ensures that no value is present for OrderType, not even an explicit nil
### GetTimeInForce

`func (o *AccountOrderRecord) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *AccountOrderRecord) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *AccountOrderRecord) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *AccountOrderRecord) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetTimePlaced

`func (o *AccountOrderRecord) GetTimePlaced() time.Time`

GetTimePlaced returns the TimePlaced field if non-nil, zero value otherwise.

### GetTimePlacedOk

`func (o *AccountOrderRecord) GetTimePlacedOk() (*time.Time, bool)`

GetTimePlacedOk returns a tuple with the TimePlaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePlaced

`func (o *AccountOrderRecord) SetTimePlaced(v time.Time)`

SetTimePlaced sets TimePlaced field to given value.

### HasTimePlaced

`func (o *AccountOrderRecord) HasTimePlaced() bool`

HasTimePlaced returns a boolean if a field has been set.

### GetTimeUpdated

`func (o *AccountOrderRecord) GetTimeUpdated() time.Time`

GetTimeUpdated returns the TimeUpdated field if non-nil, zero value otherwise.

### GetTimeUpdatedOk

`func (o *AccountOrderRecord) GetTimeUpdatedOk() (*time.Time, bool)`

GetTimeUpdatedOk returns a tuple with the TimeUpdated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeUpdated

`func (o *AccountOrderRecord) SetTimeUpdated(v time.Time)`

SetTimeUpdated sets TimeUpdated field to given value.

### HasTimeUpdated

`func (o *AccountOrderRecord) HasTimeUpdated() bool`

HasTimeUpdated returns a boolean if a field has been set.

### SetTimeUpdatedNil

`func (o *AccountOrderRecord) SetTimeUpdatedNil(b bool)`

 SetTimeUpdatedNil sets the value for TimeUpdated to be an explicit nil

### UnsetTimeUpdated
`func (o *AccountOrderRecord) UnsetTimeUpdated()`

UnsetTimeUpdated ensures that no value is present for TimeUpdated, not even an explicit nil
### GetTimeExecuted

`func (o *AccountOrderRecord) GetTimeExecuted() time.Time`

GetTimeExecuted returns the TimeExecuted field if non-nil, zero value otherwise.

### GetTimeExecutedOk

`func (o *AccountOrderRecord) GetTimeExecutedOk() (*time.Time, bool)`

GetTimeExecutedOk returns a tuple with the TimeExecuted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExecuted

`func (o *AccountOrderRecord) SetTimeExecuted(v time.Time)`

SetTimeExecuted sets TimeExecuted field to given value.

### HasTimeExecuted

`func (o *AccountOrderRecord) HasTimeExecuted() bool`

HasTimeExecuted returns a boolean if a field has been set.

### SetTimeExecutedNil

`func (o *AccountOrderRecord) SetTimeExecutedNil(b bool)`

 SetTimeExecutedNil sets the value for TimeExecuted to be an explicit nil

### UnsetTimeExecuted
`func (o *AccountOrderRecord) UnsetTimeExecuted()`

UnsetTimeExecuted ensures that no value is present for TimeExecuted, not even an explicit nil
### GetExpiryDate

`func (o *AccountOrderRecord) GetExpiryDate() time.Time`

GetExpiryDate returns the ExpiryDate field if non-nil, zero value otherwise.

### GetExpiryDateOk

`func (o *AccountOrderRecord) GetExpiryDateOk() (*time.Time, bool)`

GetExpiryDateOk returns a tuple with the ExpiryDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiryDate

`func (o *AccountOrderRecord) SetExpiryDate(v time.Time)`

SetExpiryDate sets ExpiryDate field to given value.

### HasExpiryDate

`func (o *AccountOrderRecord) HasExpiryDate() bool`

HasExpiryDate returns a boolean if a field has been set.

### SetExpiryDateNil

`func (o *AccountOrderRecord) SetExpiryDateNil(b bool)`

 SetExpiryDateNil sets the value for ExpiryDate to be an explicit nil

### UnsetExpiryDate
`func (o *AccountOrderRecord) UnsetExpiryDate()`

UnsetExpiryDate ensures that no value is present for ExpiryDate, not even an explicit nil
### GetSymbol

`func (o *AccountOrderRecord) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AccountOrderRecord) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AccountOrderRecord) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AccountOrderRecord) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


