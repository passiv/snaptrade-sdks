# Status

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | Pointer to **int32** |  | [optional] 
**Timestamp** | Pointer to **string** |  | [optional] 
**Online** | Pointer to **bool** |  | [optional] 

## Methods

### NewStatus

`func NewStatus() *Status`

NewStatus instantiates a new Status object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStatusWithDefaults

`func NewStatusWithDefaults() *Status`

NewStatusWithDefaults instantiates a new Status object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVersion

`func (o *Status) GetVersion() int32`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *Status) GetVersionOk() (*int32, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *Status) SetVersion(v int32)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *Status) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetTimestamp

`func (o *Status) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Status) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Status) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Status) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetOnline

`func (o *Status) GetOnline() bool`

GetOnline returns the Online field if non-nil, zero value otherwise.

### GetOnlineOk

`func (o *Status) GetOnlineOk() (*bool, bool)`

GetOnlineOk returns a tuple with the Online field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnline

`func (o *Status) SetOnline(v bool)`

SetOnline sets Online field to given value.

### HasOnline

`func (o *Status) HasOnline() bool`

HasOnline returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


