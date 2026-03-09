# AccountOrderRecordV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | Pointer to **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | [optional] 
**Status** | Pointer to [**AccountOrderRecordStatus**](AccountOrderRecordStatus.md) |  | [optional] 
**OrderType** | Pointer to **NullableString** | The type of order placed.   - &#x60;MARKET&#x60;   - &#x60;LIMIT&#x60;   - &#x60;STOP&#x60;   - &#x60;STOP_LIMIT&#x60;  | [optional] 
**TimeInForce** | Pointer to **string** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage&#39;s time in force value.   - &#x60;DAY&#x60; - Day. The order is valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.   - &#x60;MOO&#x60; - Market On Open. The order is to be executed at the day&#39;s opening price.   - &#x60;EHP&#x60; - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close.  | [optional] 
**TimePlaced** | Pointer to **time.Time** | The time the order was placed. This is the time the order was submitted to the brokerage. | [optional] 
**TimeExecuted** | Pointer to **NullableTime** | The time the order was executed in the brokerage system. This value is not always available from the brokerage. | [optional] 
**QuoteCurrency** | Pointer to **string** | Quote currency code for the order. | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat32** | The price at which the order was executed. | [optional] 
**LimitPrice** | Pointer to **NullableFloat32** | The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**StopPrice** | Pointer to **NullableFloat32** | The stop price is the price at which a stop order is triggered. Should only apply to &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Legs** | Pointer to [**[]AccountOrderRecordLeg**](AccountOrderRecordLeg.md) | List of legs that make up the order. | [optional] 

## Methods

### NewAccountOrderRecordV2

`func NewAccountOrderRecordV2() *AccountOrderRecordV2`

NewAccountOrderRecordV2 instantiates a new AccountOrderRecordV2 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderRecordV2WithDefaults

`func NewAccountOrderRecordV2WithDefaults() *AccountOrderRecordV2`

NewAccountOrderRecordV2WithDefaults instantiates a new AccountOrderRecordV2 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *AccountOrderRecordV2) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *AccountOrderRecordV2) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *AccountOrderRecordV2) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.

### HasBrokerageOrderId

`func (o *AccountOrderRecordV2) HasBrokerageOrderId() bool`

HasBrokerageOrderId returns a boolean if a field has been set.

### GetStatus

`func (o *AccountOrderRecordV2) GetStatus() AccountOrderRecordStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AccountOrderRecordV2) GetStatusOk() (*AccountOrderRecordStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AccountOrderRecordV2) SetStatus(v AccountOrderRecordStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AccountOrderRecordV2) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetOrderType

`func (o *AccountOrderRecordV2) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *AccountOrderRecordV2) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *AccountOrderRecordV2) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *AccountOrderRecordV2) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### SetOrderTypeNil

`func (o *AccountOrderRecordV2) SetOrderTypeNil(b bool)`

 SetOrderTypeNil sets the value for OrderType to be an explicit nil

### UnsetOrderType
`func (o *AccountOrderRecordV2) UnsetOrderType()`

UnsetOrderType ensures that no value is present for OrderType, not even an explicit nil
### GetTimeInForce

`func (o *AccountOrderRecordV2) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *AccountOrderRecordV2) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *AccountOrderRecordV2) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *AccountOrderRecordV2) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetTimePlaced

`func (o *AccountOrderRecordV2) GetTimePlaced() time.Time`

GetTimePlaced returns the TimePlaced field if non-nil, zero value otherwise.

### GetTimePlacedOk

`func (o *AccountOrderRecordV2) GetTimePlacedOk() (*time.Time, bool)`

GetTimePlacedOk returns a tuple with the TimePlaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePlaced

`func (o *AccountOrderRecordV2) SetTimePlaced(v time.Time)`

SetTimePlaced sets TimePlaced field to given value.

### HasTimePlaced

`func (o *AccountOrderRecordV2) HasTimePlaced() bool`

HasTimePlaced returns a boolean if a field has been set.

### GetTimeExecuted

`func (o *AccountOrderRecordV2) GetTimeExecuted() time.Time`

GetTimeExecuted returns the TimeExecuted field if non-nil, zero value otherwise.

### GetTimeExecutedOk

`func (o *AccountOrderRecordV2) GetTimeExecutedOk() (*time.Time, bool)`

GetTimeExecutedOk returns a tuple with the TimeExecuted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExecuted

`func (o *AccountOrderRecordV2) SetTimeExecuted(v time.Time)`

SetTimeExecuted sets TimeExecuted field to given value.

### HasTimeExecuted

`func (o *AccountOrderRecordV2) HasTimeExecuted() bool`

HasTimeExecuted returns a boolean if a field has been set.

### SetTimeExecutedNil

`func (o *AccountOrderRecordV2) SetTimeExecutedNil(b bool)`

 SetTimeExecutedNil sets the value for TimeExecuted to be an explicit nil

### UnsetTimeExecuted
`func (o *AccountOrderRecordV2) UnsetTimeExecuted()`

UnsetTimeExecuted ensures that no value is present for TimeExecuted, not even an explicit nil
### GetQuoteCurrency

`func (o *AccountOrderRecordV2) GetQuoteCurrency() string`

GetQuoteCurrency returns the QuoteCurrency field if non-nil, zero value otherwise.

### GetQuoteCurrencyOk

`func (o *AccountOrderRecordV2) GetQuoteCurrencyOk() (*string, bool)`

GetQuoteCurrencyOk returns a tuple with the QuoteCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuoteCurrency

`func (o *AccountOrderRecordV2) SetQuoteCurrency(v string)`

SetQuoteCurrency sets QuoteCurrency field to given value.

### HasQuoteCurrency

`func (o *AccountOrderRecordV2) HasQuoteCurrency() bool`

HasQuoteCurrency returns a boolean if a field has been set.

### GetExecutionPrice

`func (o *AccountOrderRecordV2) GetExecutionPrice() float32`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *AccountOrderRecordV2) GetExecutionPriceOk() (*float32, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *AccountOrderRecordV2) SetExecutionPrice(v float32)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *AccountOrderRecordV2) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *AccountOrderRecordV2) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *AccountOrderRecordV2) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetLimitPrice

`func (o *AccountOrderRecordV2) GetLimitPrice() float32`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *AccountOrderRecordV2) GetLimitPriceOk() (*float32, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *AccountOrderRecordV2) SetLimitPrice(v float32)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *AccountOrderRecordV2) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *AccountOrderRecordV2) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *AccountOrderRecordV2) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetStopPrice

`func (o *AccountOrderRecordV2) GetStopPrice() float32`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *AccountOrderRecordV2) GetStopPriceOk() (*float32, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *AccountOrderRecordV2) SetStopPrice(v float32)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *AccountOrderRecordV2) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *AccountOrderRecordV2) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *AccountOrderRecordV2) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
### GetLegs

`func (o *AccountOrderRecordV2) GetLegs() []AccountOrderRecordLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *AccountOrderRecordV2) GetLegsOk() (*[]AccountOrderRecordLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *AccountOrderRecordV2) SetLegs(v []AccountOrderRecordLeg)`

SetLegs sets Legs field to given value.

### HasLegs

`func (o *AccountOrderRecordV2) HasLegs() bool`

HasLegs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


