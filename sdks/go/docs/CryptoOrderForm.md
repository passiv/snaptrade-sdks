# CryptoOrderForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**CryptoTradingInstrument**](CryptoTradingInstrument.md) |  | 
**Side** | [**ActionStrict**](ActionStrict.md) |  | 
**Type** | **string** | The type of order to place. | 
**TimeInForce** | **string** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.  | 
**Amount** | **float64** | The amount of the base currency to buy or sell. | 
**LimitPrice** | Pointer to **float64** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT. | [optional] 
**StopPrice** | Pointer to **float64** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT. | [optional] 
**PostOnly** | Pointer to **bool** | Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.  | [optional] 
**ExpirationDate** | Pointer to **time.Time** | The expiration date of the order. Required if the time_in_force is GTD. | [optional] 

## Methods

### NewCryptoOrderForm

`func NewCryptoOrderForm(instrument CryptoTradingInstrument, side ActionStrict, type_ string, timeInForce string, amount float64, ) *CryptoOrderForm`

NewCryptoOrderForm instantiates a new CryptoOrderForm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCryptoOrderFormWithDefaults

`func NewCryptoOrderFormWithDefaults() *CryptoOrderForm`

NewCryptoOrderFormWithDefaults instantiates a new CryptoOrderForm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstrument

`func (o *CryptoOrderForm) GetInstrument() CryptoTradingInstrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *CryptoOrderForm) GetInstrumentOk() (*CryptoTradingInstrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *CryptoOrderForm) SetInstrument(v CryptoTradingInstrument)`

SetInstrument sets Instrument field to given value.


### GetSide

`func (o *CryptoOrderForm) GetSide() ActionStrict`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *CryptoOrderForm) GetSideOk() (*ActionStrict, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *CryptoOrderForm) SetSide(v ActionStrict)`

SetSide sets Side field to given value.


### GetType

`func (o *CryptoOrderForm) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *CryptoOrderForm) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *CryptoOrderForm) SetType(v string)`

SetType sets Type field to given value.


### GetTimeInForce

`func (o *CryptoOrderForm) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *CryptoOrderForm) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *CryptoOrderForm) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.


### GetAmount

`func (o *CryptoOrderForm) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *CryptoOrderForm) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *CryptoOrderForm) SetAmount(v float64)`

SetAmount sets Amount field to given value.


### GetLimitPrice

`func (o *CryptoOrderForm) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *CryptoOrderForm) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *CryptoOrderForm) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *CryptoOrderForm) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### GetStopPrice

`func (o *CryptoOrderForm) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *CryptoOrderForm) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *CryptoOrderForm) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *CryptoOrderForm) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### GetPostOnly

`func (o *CryptoOrderForm) GetPostOnly() bool`

GetPostOnly returns the PostOnly field if non-nil, zero value otherwise.

### GetPostOnlyOk

`func (o *CryptoOrderForm) GetPostOnlyOk() (*bool, bool)`

GetPostOnlyOk returns a tuple with the PostOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostOnly

`func (o *CryptoOrderForm) SetPostOnly(v bool)`

SetPostOnly sets PostOnly field to given value.

### HasPostOnly

`func (o *CryptoOrderForm) HasPostOnly() bool`

HasPostOnly returns a boolean if a field has been set.

### GetExpirationDate

`func (o *CryptoOrderForm) GetExpirationDate() time.Time`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *CryptoOrderForm) GetExpirationDateOk() (*time.Time, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *CryptoOrderForm) SetExpirationDate(v time.Time)`

SetExpirationDate sets ExpirationDate field to given value.

### HasExpirationDate

`func (o *CryptoOrderForm) HasExpirationDate() bool`

HasExpirationDate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


