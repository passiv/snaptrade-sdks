# SecurityType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls. | [optional] 
**Code** | Pointer to **string** | A short code representing the security type. For example, \&quot;cs\&quot; for Common Stock. Here are some common values:   - &#x60;ad&#x60; - ADR   - &#x60;bnd&#x60; - Bond   - &#x60;cs&#x60; - Common Stock   - &#x60;cef&#x60; - Closed End Fund   - &#x60;crypto&#x60; - Cryptocurrency   - &#x60;et&#x60; - ETF   - &#x60;oef&#x60; - Open Ended Fund   - &#x60;ps&#x60; - Preferred Stock   - &#x60;rt&#x60; - Right   - &#x60;struct&#x60; - Structured Product   - &#x60;ut&#x60; - Unit   - &#x60;wi&#x60; - When Issued   - &#x60;wt&#x60; - Warrant  | [optional] 
**Description** | Pointer to **string** | A human-readable description of the security type. For example, \&quot;Common Stock\&quot; or \&quot;ETF\&quot;. | [optional] 
**IsSupported** | Pointer to **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 

## Methods

### NewSecurityType

`func NewSecurityType() *SecurityType`

NewSecurityType instantiates a new SecurityType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSecurityTypeWithDefaults

`func NewSecurityTypeWithDefaults() *SecurityType`

NewSecurityTypeWithDefaults instantiates a new SecurityType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SecurityType) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SecurityType) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SecurityType) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SecurityType) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCode

`func (o *SecurityType) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *SecurityType) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *SecurityType) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *SecurityType) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetDescription

`func (o *SecurityType) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SecurityType) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SecurityType) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SecurityType) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetIsSupported

`func (o *SecurityType) GetIsSupported() bool`

GetIsSupported returns the IsSupported field if non-nil, zero value otherwise.

### GetIsSupportedOk

`func (o *SecurityType) GetIsSupportedOk() (*bool, bool)`

GetIsSupportedOk returns a tuple with the IsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSupported

`func (o *SecurityType) SetIsSupported(v bool)`

SetIsSupported sets IsSupported field to given value.

### HasIsSupported

`func (o *SecurityType) HasIsSupported() bool`

HasIsSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


