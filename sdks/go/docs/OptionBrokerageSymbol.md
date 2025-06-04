# OptionBrokerageSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OptionSymbol** | Pointer to [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**Id** | Pointer to **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 
**Description** | Pointer to **string** | This field is deprecated and the caller should use the &#x60;option_symbol&#x60; child property&#39;s &#x60;description&#x60; instead. | [optional] 

## Methods

### NewOptionBrokerageSymbol

`func NewOptionBrokerageSymbol() *OptionBrokerageSymbol`

NewOptionBrokerageSymbol instantiates a new OptionBrokerageSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionBrokerageSymbolWithDefaults

`func NewOptionBrokerageSymbolWithDefaults() *OptionBrokerageSymbol`

NewOptionBrokerageSymbolWithDefaults instantiates a new OptionBrokerageSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOptionSymbol

`func (o *OptionBrokerageSymbol) GetOptionSymbol() OptionsSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *OptionBrokerageSymbol) GetOptionSymbolOk() (*OptionsSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *OptionBrokerageSymbol) SetOptionSymbol(v OptionsSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *OptionBrokerageSymbol) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### GetId

`func (o *OptionBrokerageSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OptionBrokerageSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OptionBrokerageSymbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *OptionBrokerageSymbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDescription

`func (o *OptionBrokerageSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *OptionBrokerageSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *OptionBrokerageSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *OptionBrokerageSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


