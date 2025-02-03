# AccountUniversalActivityOptionSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the option symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | 
**Ticker** | **string** | The [OCC symbol](https://en.wikipedia.org/wiki/Option_symbol) for the option. | 
**OptionType** | **string** | The type of option. Either \&quot;CALL\&quot; or \&quot;PUT\&quot;. | 
**StrikePrice** | **float32** | The option strike price. | 
**ExpirationDate** | **string** | The option expiration date. | 
**IsMiniOption** | Pointer to **bool** | Whether the option is a mini option. Mini options have 10 underlying shares per contract instead of the standard 100. | [optional] 
**UnderlyingSymbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | 

## Methods

### NewAccountUniversalActivityOptionSymbol

`func NewAccountUniversalActivityOptionSymbol(id string, ticker string, optionType string, strikePrice float32, expirationDate string, underlyingSymbol UnderlyingSymbol, ) *AccountUniversalActivityOptionSymbol`

NewAccountUniversalActivityOptionSymbol instantiates a new AccountUniversalActivityOptionSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountUniversalActivityOptionSymbolWithDefaults

`func NewAccountUniversalActivityOptionSymbolWithDefaults() *AccountUniversalActivityOptionSymbol`

NewAccountUniversalActivityOptionSymbolWithDefaults instantiates a new AccountUniversalActivityOptionSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AccountUniversalActivityOptionSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AccountUniversalActivityOptionSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AccountUniversalActivityOptionSymbol) SetId(v string)`

SetId sets Id field to given value.


### GetTicker

`func (o *AccountUniversalActivityOptionSymbol) GetTicker() string`

GetTicker returns the Ticker field if non-nil, zero value otherwise.

### GetTickerOk

`func (o *AccountUniversalActivityOptionSymbol) GetTickerOk() (*string, bool)`

GetTickerOk returns a tuple with the Ticker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicker

`func (o *AccountUniversalActivityOptionSymbol) SetTicker(v string)`

SetTicker sets Ticker field to given value.


### GetOptionType

`func (o *AccountUniversalActivityOptionSymbol) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *AccountUniversalActivityOptionSymbol) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *AccountUniversalActivityOptionSymbol) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *AccountUniversalActivityOptionSymbol) GetStrikePrice() float32`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *AccountUniversalActivityOptionSymbol) GetStrikePriceOk() (*float32, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *AccountUniversalActivityOptionSymbol) SetStrikePrice(v float32)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *AccountUniversalActivityOptionSymbol) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *AccountUniversalActivityOptionSymbol) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *AccountUniversalActivityOptionSymbol) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### GetIsMiniOption

`func (o *AccountUniversalActivityOptionSymbol) GetIsMiniOption() bool`

GetIsMiniOption returns the IsMiniOption field if non-nil, zero value otherwise.

### GetIsMiniOptionOk

`func (o *AccountUniversalActivityOptionSymbol) GetIsMiniOptionOk() (*bool, bool)`

GetIsMiniOptionOk returns a tuple with the IsMiniOption field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsMiniOption

`func (o *AccountUniversalActivityOptionSymbol) SetIsMiniOption(v bool)`

SetIsMiniOption sets IsMiniOption field to given value.

### HasIsMiniOption

`func (o *AccountUniversalActivityOptionSymbol) HasIsMiniOption() bool`

HasIsMiniOption returns a boolean if a field has been set.

### GetUnderlyingSymbol

`func (o *AccountUniversalActivityOptionSymbol) GetUnderlyingSymbol() UnderlyingSymbol`

GetUnderlyingSymbol returns the UnderlyingSymbol field if non-nil, zero value otherwise.

### GetUnderlyingSymbolOk

`func (o *AccountUniversalActivityOptionSymbol) GetUnderlyingSymbolOk() (*UnderlyingSymbol, bool)`

GetUnderlyingSymbolOk returns a tuple with the UnderlyingSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingSymbol

`func (o *AccountUniversalActivityOptionSymbol) SetUnderlyingSymbol(v UnderlyingSymbol)`

SetUnderlyingSymbol sets UnderlyingSymbol field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


