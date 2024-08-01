# UserErrorLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestedAt** | Pointer to **string** |  | [optional] 
**Response** | Pointer to **string** |  | [optional] 
**StatusCode** | Pointer to **float32** |  | [optional] 
**QueryParams** | Pointer to **string** |  | [optional] 
**HttpMethod** | Pointer to **string** |  | [optional] 
**Endpoint** | Pointer to **string** |  | [optional] 

## Methods

### NewUserErrorLog

`func NewUserErrorLog() *UserErrorLog`

NewUserErrorLog instantiates a new UserErrorLog object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserErrorLogWithDefaults

`func NewUserErrorLogWithDefaults() *UserErrorLog`

NewUserErrorLogWithDefaults instantiates a new UserErrorLog object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestedAt

`func (o *UserErrorLog) GetRequestedAt() string`

GetRequestedAt returns the RequestedAt field if non-nil, zero value otherwise.

### GetRequestedAtOk

`func (o *UserErrorLog) GetRequestedAtOk() (*string, bool)`

GetRequestedAtOk returns a tuple with the RequestedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestedAt

`func (o *UserErrorLog) SetRequestedAt(v string)`

SetRequestedAt sets RequestedAt field to given value.

### HasRequestedAt

`func (o *UserErrorLog) HasRequestedAt() bool`

HasRequestedAt returns a boolean if a field has been set.

### GetResponse

`func (o *UserErrorLog) GetResponse() string`

GetResponse returns the Response field if non-nil, zero value otherwise.

### GetResponseOk

`func (o *UserErrorLog) GetResponseOk() (*string, bool)`

GetResponseOk returns a tuple with the Response field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponse

`func (o *UserErrorLog) SetResponse(v string)`

SetResponse sets Response field to given value.

### HasResponse

`func (o *UserErrorLog) HasResponse() bool`

HasResponse returns a boolean if a field has been set.

### GetStatusCode

`func (o *UserErrorLog) GetStatusCode() float32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *UserErrorLog) GetStatusCodeOk() (*float32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *UserErrorLog) SetStatusCode(v float32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *UserErrorLog) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetQueryParams

`func (o *UserErrorLog) GetQueryParams() string`

GetQueryParams returns the QueryParams field if non-nil, zero value otherwise.

### GetQueryParamsOk

`func (o *UserErrorLog) GetQueryParamsOk() (*string, bool)`

GetQueryParamsOk returns a tuple with the QueryParams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryParams

`func (o *UserErrorLog) SetQueryParams(v string)`

SetQueryParams sets QueryParams field to given value.

### HasQueryParams

`func (o *UserErrorLog) HasQueryParams() bool`

HasQueryParams returns a boolean if a field has been set.

### GetHttpMethod

`func (o *UserErrorLog) GetHttpMethod() string`

GetHttpMethod returns the HttpMethod field if non-nil, zero value otherwise.

### GetHttpMethodOk

`func (o *UserErrorLog) GetHttpMethodOk() (*string, bool)`

GetHttpMethodOk returns a tuple with the HttpMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHttpMethod

`func (o *UserErrorLog) SetHttpMethod(v string)`

SetHttpMethod sets HttpMethod field to given value.

### HasHttpMethod

`func (o *UserErrorLog) HasHttpMethod() bool`

HasHttpMethod returns a boolean if a field has been set.

### GetEndpoint

`func (o *UserErrorLog) GetEndpoint() string`

GetEndpoint returns the Endpoint field if non-nil, zero value otherwise.

### GetEndpointOk

`func (o *UserErrorLog) GetEndpointOk() (*string, bool)`

GetEndpointOk returns a tuple with the Endpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoint

`func (o *UserErrorLog) SetEndpoint(v string)`

SetEndpoint sets Endpoint field to given value.

### HasEndpoint

`func (o *UserErrorLog) HasEndpoint() bool`

HasEndpoint returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


