# AccountOrderRecordLegInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **string** | The symbol or ticker for the security. | [optional] 
**Description** | Pointer to **string** | Human-readable description of the security. | [optional] 
**AssetType** | Pointer to **string** | Type of instrument for the leg. - EQUITY - OPTION - CRYPTO  | [optional] 
**ExchangeMicCode** | Pointer to **string** | Market Identifier Code (MIC) for the exchange on which the instrument trades. | [optional] 
**FigiCode** | Pointer to **NullableString** | Financial Instrument Global Identifier (FIGI) if available. | [optional] 

## Methods

### NewAccountOrderRecordLegInstrument

`func NewAccountOrderRecordLegInstrument() *AccountOrderRecordLegInstrument`

NewAccountOrderRecordLegInstrument instantiates a new AccountOrderRecordLegInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderRecordLegInstrumentWithDefaults

`func NewAccountOrderRecordLegInstrumentWithDefaults() *AccountOrderRecordLegInstrument`

NewAccountOrderRecordLegInstrumentWithDefaults instantiates a new AccountOrderRecordLegInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AccountOrderRecordLegInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AccountOrderRecordLegInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AccountOrderRecordLegInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AccountOrderRecordLegInstrument) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetDescription

`func (o *AccountOrderRecordLegInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AccountOrderRecordLegInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AccountOrderRecordLegInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AccountOrderRecordLegInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetAssetType

`func (o *AccountOrderRecordLegInstrument) GetAssetType() string`

GetAssetType returns the AssetType field if non-nil, zero value otherwise.

### GetAssetTypeOk

`func (o *AccountOrderRecordLegInstrument) GetAssetTypeOk() (*string, bool)`

GetAssetTypeOk returns a tuple with the AssetType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetType

`func (o *AccountOrderRecordLegInstrument) SetAssetType(v string)`

SetAssetType sets AssetType field to given value.

### HasAssetType

`func (o *AccountOrderRecordLegInstrument) HasAssetType() bool`

HasAssetType returns a boolean if a field has been set.

### GetExchangeMicCode

`func (o *AccountOrderRecordLegInstrument) GetExchangeMicCode() string`

GetExchangeMicCode returns the ExchangeMicCode field if non-nil, zero value otherwise.

### GetExchangeMicCodeOk

`func (o *AccountOrderRecordLegInstrument) GetExchangeMicCodeOk() (*string, bool)`

GetExchangeMicCodeOk returns a tuple with the ExchangeMicCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeMicCode

`func (o *AccountOrderRecordLegInstrument) SetExchangeMicCode(v string)`

SetExchangeMicCode sets ExchangeMicCode field to given value.

### HasExchangeMicCode

`func (o *AccountOrderRecordLegInstrument) HasExchangeMicCode() bool`

HasExchangeMicCode returns a boolean if a field has been set.

### GetFigiCode

`func (o *AccountOrderRecordLegInstrument) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *AccountOrderRecordLegInstrument) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *AccountOrderRecordLegInstrument) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *AccountOrderRecordLegInstrument) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *AccountOrderRecordLegInstrument) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *AccountOrderRecordLegInstrument) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


