# AccountUniversalActivityCurrency

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the currency. This is the UUID used to reference the currency in SnapTrade. | [optional] 
**Code** | Pointer to **string** | The ISO-4217 currency code for the currency. | [optional] 
**Name** | Pointer to **string** | A human-friendly name of the currency. | [optional] 

## Methods

### NewAccountUniversalActivityCurrency

`func NewAccountUniversalActivityCurrency() *AccountUniversalActivityCurrency`

NewAccountUniversalActivityCurrency instantiates a new AccountUniversalActivityCurrency object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountUniversalActivityCurrencyWithDefaults

`func NewAccountUniversalActivityCurrencyWithDefaults() *AccountUniversalActivityCurrency`

NewAccountUniversalActivityCurrencyWithDefaults instantiates a new AccountUniversalActivityCurrency object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AccountUniversalActivityCurrency) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AccountUniversalActivityCurrency) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AccountUniversalActivityCurrency) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *AccountUniversalActivityCurrency) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCode

`func (o *AccountUniversalActivityCurrency) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *AccountUniversalActivityCurrency) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *AccountUniversalActivityCurrency) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *AccountUniversalActivityCurrency) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetName

`func (o *AccountUniversalActivityCurrency) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AccountUniversalActivityCurrency) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AccountUniversalActivityCurrency) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AccountUniversalActivityCurrency) HasName() bool`

HasName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


