# LoginRedirectURI

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RedirectURI** | Pointer to **string** | Connection Portal link to redirect user to connect a brokerage account. | [optional] 
**SessionId** | Pointer to **string** | ID to identify the connection portal session. | [optional] 

## Methods

### NewLoginRedirectURI

`func NewLoginRedirectURI() *LoginRedirectURI`

NewLoginRedirectURI instantiates a new LoginRedirectURI object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLoginRedirectURIWithDefaults

`func NewLoginRedirectURIWithDefaults() *LoginRedirectURI`

NewLoginRedirectURIWithDefaults instantiates a new LoginRedirectURI object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRedirectURI

`func (o *LoginRedirectURI) GetRedirectURI() string`

GetRedirectURI returns the RedirectURI field if non-nil, zero value otherwise.

### GetRedirectURIOk

`func (o *LoginRedirectURI) GetRedirectURIOk() (*string, bool)`

GetRedirectURIOk returns a tuple with the RedirectURI field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectURI

`func (o *LoginRedirectURI) SetRedirectURI(v string)`

SetRedirectURI sets RedirectURI field to given value.

### HasRedirectURI

`func (o *LoginRedirectURI) HasRedirectURI() bool`

HasRedirectURI returns a boolean if a field has been set.

### GetSessionId

`func (o *LoginRedirectURI) GetSessionId() string`

GetSessionId returns the SessionId field if non-nil, zero value otherwise.

### GetSessionIdOk

`func (o *LoginRedirectURI) GetSessionIdOk() (*string, bool)`

GetSessionIdOk returns a tuple with the SessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionId

`func (o *LoginRedirectURI) SetSessionId(v string)`

SetSessionId sets SessionId field to given value.

### HasSessionId

`func (o *LoginRedirectURI) HasSessionId() bool`

HasSessionId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


