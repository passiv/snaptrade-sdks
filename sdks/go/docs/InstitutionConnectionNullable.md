# InstitutionConnectionNullable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Methods** | **[]string** | Ways an end user can connect. - &#x60;OAUTH&#x60;: the user signs in on the institution&#39;s own site and approves access. - &#x60;CREDENTIALS&#x60;: the user enters their login details in the SnapTrade Connection Portal. - &#x60;API_KEY&#x60;: the user creates an API key at the institution and pastes it in.  | 
**Scopes** | **[]string** | What a connection can do. &#x60;READ&#x60; is always present. - &#x60;READ&#x60;: read accounts, balances, positions and activity. - &#x60;TRADE&#x60;: place orders.  | 

## Methods

### NewInstitutionConnectionNullable

`func NewInstitutionConnectionNullable(methods []string, scopes []string, ) *InstitutionConnectionNullable`

NewInstitutionConnectionNullable instantiates a new InstitutionConnectionNullable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstitutionConnectionNullableWithDefaults

`func NewInstitutionConnectionNullableWithDefaults() *InstitutionConnectionNullable`

NewInstitutionConnectionNullableWithDefaults instantiates a new InstitutionConnectionNullable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMethods

`func (o *InstitutionConnectionNullable) GetMethods() []string`

GetMethods returns the Methods field if non-nil, zero value otherwise.

### GetMethodsOk

`func (o *InstitutionConnectionNullable) GetMethodsOk() (*[]string, bool)`

GetMethodsOk returns a tuple with the Methods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMethods

`func (o *InstitutionConnectionNullable) SetMethods(v []string)`

SetMethods sets Methods field to given value.


### GetScopes

`func (o *InstitutionConnectionNullable) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *InstitutionConnectionNullable) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *InstitutionConnectionNullable) SetScopes(v []string)`

SetScopes sets Scopes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


