# OptionsSymbol

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

### NewOptionsSymbol

`func NewOptionsSymbol(id string, ticker string, optionType string, strikePrice float32, expirationDate string, underlyingSymbol UnderlyingSymbol, ) *OptionsSymbol`

NewOptionsSymbol instantiates a new OptionsSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsSymbolWithDefaults

`func NewOptionsSymbolWithDefaults() *OptionsSymbol`

NewOptionsSymbolWithDefaults instantiates a new OptionsSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OptionsSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OptionsSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OptionsSymbol) SetId(v string)`

SetId sets Id field to given value.


### GetTicker

`func (o *OptionsSymbol) GetTicker() string`

GetTicker returns the Ticker field if non-nil, zero value otherwise.

### GetTickerOk

`func (o *OptionsSymbol) GetTickerOk() (*string, bool)`

GetTickerOk returns a tuple with the Ticker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicker

`func (o *OptionsSymbol) SetTicker(v string)`

SetTicker sets Ticker field to given value.


### GetOptionType

`func (o *OptionsSymbol) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *OptionsSymbol) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *OptionsSymbol) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *OptionsSymbol) GetStrikePrice() float32`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *OptionsSymbol) GetStrikePriceOk() (*float32, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *OptionsSymbol) SetStrikePrice(v float32)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *OptionsSymbol) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *OptionsSymbol) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *OptionsSymbol) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### GetIsMiniOption

`func (o *OptionsSymbol) GetIsMiniOption() bool`

GetIsMiniOption returns the IsMiniOption field if non-nil, zero value otherwise.

### GetIsMiniOptionOk

`func (o *OptionsSymbol) GetIsMiniOptionOk() (*bool, bool)`

GetIsMiniOptionOk returns a tuple with the IsMiniOption field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsMiniOption

`func (o *OptionsSymbol) SetIsMiniOption(v bool)`

SetIsMiniOption sets IsMiniOption field to given value.

### HasIsMiniOption

`func (o *OptionsSymbol) HasIsMiniOption() bool`

HasIsMiniOption returns a boolean if a field has been set.

### GetUnderlyingSymbol

`func (o *OptionsSymbol) GetUnderlyingSymbol() UnderlyingSymbol`

GetUnderlyingSymbol returns the UnderlyingSymbol field if non-nil, zero value otherwise.

### GetUnderlyingSymbolOk

`func (o *OptionsSymbol) GetUnderlyingSymbolOk() (*UnderlyingSymbol, bool)`

GetUnderlyingSymbolOk returns a tuple with the UnderlyingSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingSymbol

`func (o *OptionsSymbol) SetUnderlyingSymbol(v UnderlyingSymbol)`

SetUnderlyingSymbol sets UnderlyingSymbol field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


