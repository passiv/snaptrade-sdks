# TokenizedAssetInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the canonical tokenized asset wrapper. | 
**Symbol** | **string** | Display symbol of the underlying stock or ETF, not a token-specific ticker. | 
**Description** | Pointer to **string** | Display name of the underlying stock or ETF, when available. | [optional] 
**UnderlyingInstrument** | [**UnderlyingTokenizedAssetInstrument**](UnderlyingTokenizedAssetInstrument.md) |  | 

## Methods

### NewTokenizedAssetInstrument

`func NewTokenizedAssetInstrument(kind string, id string, symbol string, underlyingInstrument UnderlyingTokenizedAssetInstrument, ) *TokenizedAssetInstrument`

NewTokenizedAssetInstrument instantiates a new TokenizedAssetInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenizedAssetInstrumentWithDefaults

`func NewTokenizedAssetInstrumentWithDefaults() *TokenizedAssetInstrument`

NewTokenizedAssetInstrumentWithDefaults instantiates a new TokenizedAssetInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *TokenizedAssetInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *TokenizedAssetInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *TokenizedAssetInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *TokenizedAssetInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TokenizedAssetInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TokenizedAssetInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *TokenizedAssetInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TokenizedAssetInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TokenizedAssetInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetDescription

`func (o *TokenizedAssetInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *TokenizedAssetInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *TokenizedAssetInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *TokenizedAssetInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetUnderlyingInstrument

`func (o *TokenizedAssetInstrument) GetUnderlyingInstrument() UnderlyingTokenizedAssetInstrument`

GetUnderlyingInstrument returns the UnderlyingInstrument field if non-nil, zero value otherwise.

### GetUnderlyingInstrumentOk

`func (o *TokenizedAssetInstrument) GetUnderlyingInstrumentOk() (*UnderlyingTokenizedAssetInstrument, bool)`

GetUnderlyingInstrumentOk returns a tuple with the UnderlyingInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingInstrument

`func (o *TokenizedAssetInstrument) SetUnderlyingInstrument(v UnderlyingTokenizedAssetInstrument)`

SetUnderlyingInstrument sets UnderlyingInstrument field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


