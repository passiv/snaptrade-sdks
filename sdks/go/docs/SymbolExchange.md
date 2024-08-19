# SymbolExchange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique ID for the exchange in SnapTrade. | [optional] 
**Code** | Pointer to **string** | A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field. | [optional] 
**MicCode** | Pointer to **string** | The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange. | [optional] 
**Name** | Pointer to **string** | The full name of the exchange. | [optional] 
**Timezone** | Pointer to **string** | The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange. | [optional] 
**StartTime** | Pointer to **string** | The time when the exchange opens for trading. | [optional] 
**CloseTime** | Pointer to **string** | The time when the exchange closes for trading. | [optional] 
**Suffix** | Pointer to **NullableString** | The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail. | [optional] 

## Methods

### NewSymbolExchange

`func NewSymbolExchange() *SymbolExchange`

NewSymbolExchange instantiates a new SymbolExchange object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSymbolExchangeWithDefaults

`func NewSymbolExchangeWithDefaults() *SymbolExchange`

NewSymbolExchangeWithDefaults instantiates a new SymbolExchange object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SymbolExchange) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SymbolExchange) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SymbolExchange) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SymbolExchange) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCode

`func (o *SymbolExchange) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *SymbolExchange) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *SymbolExchange) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *SymbolExchange) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetMicCode

`func (o *SymbolExchange) GetMicCode() string`

GetMicCode returns the MicCode field if non-nil, zero value otherwise.

### GetMicCodeOk

`func (o *SymbolExchange) GetMicCodeOk() (*string, bool)`

GetMicCodeOk returns a tuple with the MicCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicCode

`func (o *SymbolExchange) SetMicCode(v string)`

SetMicCode sets MicCode field to given value.

### HasMicCode

`func (o *SymbolExchange) HasMicCode() bool`

HasMicCode returns a boolean if a field has been set.

### GetName

`func (o *SymbolExchange) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SymbolExchange) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SymbolExchange) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SymbolExchange) HasName() bool`

HasName returns a boolean if a field has been set.

### GetTimezone

`func (o *SymbolExchange) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *SymbolExchange) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *SymbolExchange) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *SymbolExchange) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### GetStartTime

`func (o *SymbolExchange) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *SymbolExchange) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *SymbolExchange) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *SymbolExchange) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetCloseTime

`func (o *SymbolExchange) GetCloseTime() string`

GetCloseTime returns the CloseTime field if non-nil, zero value otherwise.

### GetCloseTimeOk

`func (o *SymbolExchange) GetCloseTimeOk() (*string, bool)`

GetCloseTimeOk returns a tuple with the CloseTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCloseTime

`func (o *SymbolExchange) SetCloseTime(v string)`

SetCloseTime sets CloseTime field to given value.

### HasCloseTime

`func (o *SymbolExchange) HasCloseTime() bool`

HasCloseTime returns a boolean if a field has been set.

### GetSuffix

`func (o *SymbolExchange) GetSuffix() string`

GetSuffix returns the Suffix field if non-nil, zero value otherwise.

### GetSuffixOk

`func (o *SymbolExchange) GetSuffixOk() (*string, bool)`

GetSuffixOk returns a tuple with the Suffix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuffix

`func (o *SymbolExchange) SetSuffix(v string)`

SetSuffix sets Suffix field to given value.

### HasSuffix

`func (o *SymbolExchange) HasSuffix() bool`

HasSuffix returns a boolean if a field has been set.

### SetSuffixNil

`func (o *SymbolExchange) SetSuffixNil(b bool)`

 SetSuffixNil sets the value for Suffix to be an explicit nil

### UnsetSuffix
`func (o *SymbolExchange) UnsetSuffix()`

UnsetSuffix ensures that no value is present for Suffix, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


