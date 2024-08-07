# USExchange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Code** | Pointer to **string** |  | [optional] 
**MicCode** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Timezone** | Pointer to **string** |  | [optional] 
**StartTime** | Pointer to **string** |  | [optional] 
**CloseTime** | Pointer to **string** |  | [optional] 
**Suffix** | Pointer to **NullableString** |  | [optional] 
**AllowsCryptocurrencySymbols** | Pointer to **bool** |  | [optional] 

## Methods

### NewUSExchange

`func NewUSExchange() *USExchange`

NewUSExchange instantiates a new USExchange object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUSExchangeWithDefaults

`func NewUSExchangeWithDefaults() *USExchange`

NewUSExchangeWithDefaults instantiates a new USExchange object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *USExchange) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *USExchange) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *USExchange) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *USExchange) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCode

`func (o *USExchange) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *USExchange) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *USExchange) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *USExchange) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetMicCode

`func (o *USExchange) GetMicCode() string`

GetMicCode returns the MicCode field if non-nil, zero value otherwise.

### GetMicCodeOk

`func (o *USExchange) GetMicCodeOk() (*string, bool)`

GetMicCodeOk returns a tuple with the MicCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicCode

`func (o *USExchange) SetMicCode(v string)`

SetMicCode sets MicCode field to given value.

### HasMicCode

`func (o *USExchange) HasMicCode() bool`

HasMicCode returns a boolean if a field has been set.

### GetName

`func (o *USExchange) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *USExchange) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *USExchange) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *USExchange) HasName() bool`

HasName returns a boolean if a field has been set.

### GetTimezone

`func (o *USExchange) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *USExchange) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *USExchange) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *USExchange) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### GetStartTime

`func (o *USExchange) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *USExchange) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *USExchange) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *USExchange) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetCloseTime

`func (o *USExchange) GetCloseTime() string`

GetCloseTime returns the CloseTime field if non-nil, zero value otherwise.

### GetCloseTimeOk

`func (o *USExchange) GetCloseTimeOk() (*string, bool)`

GetCloseTimeOk returns a tuple with the CloseTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCloseTime

`func (o *USExchange) SetCloseTime(v string)`

SetCloseTime sets CloseTime field to given value.

### HasCloseTime

`func (o *USExchange) HasCloseTime() bool`

HasCloseTime returns a boolean if a field has been set.

### GetSuffix

`func (o *USExchange) GetSuffix() string`

GetSuffix returns the Suffix field if non-nil, zero value otherwise.

### GetSuffixOk

`func (o *USExchange) GetSuffixOk() (*string, bool)`

GetSuffixOk returns a tuple with the Suffix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuffix

`func (o *USExchange) SetSuffix(v string)`

SetSuffix sets Suffix field to given value.

### HasSuffix

`func (o *USExchange) HasSuffix() bool`

HasSuffix returns a boolean if a field has been set.

### SetSuffixNil

`func (o *USExchange) SetSuffixNil(b bool)`

 SetSuffixNil sets the value for Suffix to be an explicit nil

### UnsetSuffix
`func (o *USExchange) UnsetSuffix()`

UnsetSuffix ensures that no value is present for Suffix, not even an explicit nil
### GetAllowsCryptocurrencySymbols

`func (o *USExchange) GetAllowsCryptocurrencySymbols() bool`

GetAllowsCryptocurrencySymbols returns the AllowsCryptocurrencySymbols field if non-nil, zero value otherwise.

### GetAllowsCryptocurrencySymbolsOk

`func (o *USExchange) GetAllowsCryptocurrencySymbolsOk() (*bool, bool)`

GetAllowsCryptocurrencySymbolsOk returns a tuple with the AllowsCryptocurrencySymbols field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowsCryptocurrencySymbols

`func (o *USExchange) SetAllowsCryptocurrencySymbols(v bool)`

SetAllowsCryptocurrencySymbols sets AllowsCryptocurrencySymbols field to given value.

### HasAllowsCryptocurrencySymbols

`func (o *USExchange) HasAllowsCryptocurrencySymbols() bool`

HasAllowsCryptocurrencySymbols returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


