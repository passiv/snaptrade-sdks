# TradingCryptoSpotPlaceOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**CryptocurrencyPair**](CryptocurrencyPair.md) |  | 
**Side** | [**ActionStrict**](ActionStrict.md) |  | 
**Type** | **string** | The type of order to place. | 
**TimeInForce** | **string** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.  | 
**Amount** | **float64** | The amount of the base currency to buy or sell. | 
**LimitPrice** | Pointer to **float64** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT. | [optional] 
**StopPrice** | Pointer to **float64** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT. | [optional] 
**PostOnly** | Pointer to **bool** | Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.  | [optional] 
**ExpirationDate** | Pointer to **time.Time** | The expiration date of the order. Required if the time_in_force is GTD. | [optional] 

## Methods

### NewTradingCryptoSpotPlaceOrderRequest

`func NewTradingCryptoSpotPlaceOrderRequest(symbol CryptocurrencyPair, side ActionStrict, type_ string, timeInForce string, amount float64, ) *TradingCryptoSpotPlaceOrderRequest`

NewTradingCryptoSpotPlaceOrderRequest instantiates a new TradingCryptoSpotPlaceOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradingCryptoSpotPlaceOrderRequestWithDefaults

`func NewTradingCryptoSpotPlaceOrderRequestWithDefaults() *TradingCryptoSpotPlaceOrderRequest`

NewTradingCryptoSpotPlaceOrderRequestWithDefaults instantiates a new TradingCryptoSpotPlaceOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *TradingCryptoSpotPlaceOrderRequest) GetSymbol() CryptocurrencyPair`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetSymbolOk() (*CryptocurrencyPair, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TradingCryptoSpotPlaceOrderRequest) SetSymbol(v CryptocurrencyPair)`

SetSymbol sets Symbol field to given value.


### GetSide

`func (o *TradingCryptoSpotPlaceOrderRequest) GetSide() ActionStrict`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetSideOk() (*ActionStrict, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *TradingCryptoSpotPlaceOrderRequest) SetSide(v ActionStrict)`

SetSide sets Side field to given value.


### GetType

`func (o *TradingCryptoSpotPlaceOrderRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *TradingCryptoSpotPlaceOrderRequest) SetType(v string)`

SetType sets Type field to given value.


### GetTimeInForce

`func (o *TradingCryptoSpotPlaceOrderRequest) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *TradingCryptoSpotPlaceOrderRequest) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.


### GetAmount

`func (o *TradingCryptoSpotPlaceOrderRequest) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *TradingCryptoSpotPlaceOrderRequest) SetAmount(v float64)`

SetAmount sets Amount field to given value.


### GetLimitPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### GetStopPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *TradingCryptoSpotPlaceOrderRequest) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### GetPostOnly

`func (o *TradingCryptoSpotPlaceOrderRequest) GetPostOnly() bool`

GetPostOnly returns the PostOnly field if non-nil, zero value otherwise.

### GetPostOnlyOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetPostOnlyOk() (*bool, bool)`

GetPostOnlyOk returns a tuple with the PostOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostOnly

`func (o *TradingCryptoSpotPlaceOrderRequest) SetPostOnly(v bool)`

SetPostOnly sets PostOnly field to given value.

### HasPostOnly

`func (o *TradingCryptoSpotPlaceOrderRequest) HasPostOnly() bool`

HasPostOnly returns a boolean if a field has been set.

### GetExpirationDate

`func (o *TradingCryptoSpotPlaceOrderRequest) GetExpirationDate() time.Time`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *TradingCryptoSpotPlaceOrderRequest) GetExpirationDateOk() (*time.Time, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *TradingCryptoSpotPlaceOrderRequest) SetExpirationDate(v time.Time)`

SetExpirationDate sets ExpirationDate field to given value.

### HasExpirationDate

`func (o *TradingCryptoSpotPlaceOrderRequest) HasExpirationDate() bool`

HasExpirationDate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


