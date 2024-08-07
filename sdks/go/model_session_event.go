/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

API version: 1.0.0
Contact: api@snaptrade.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package snaptrade

import (
	"encoding/json"
)

// SessionEvent struct for SessionEvent
type SessionEvent struct {
	Id *string `json:"id,omitempty"`
	SessionEventType *string `json:"session_event_type,omitempty"`
	SessionId *string `json:"session_id,omitempty"`
	// SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
	UserId *string `json:"user_id,omitempty"`
	// Time
	CreatedDate *string `json:"created_date,omitempty"`
	BrokerageStatusCode NullableInt32 `json:"brokerage_status_code,omitempty"`
	BrokerageAuthorizationId *string `json:"brokerage_authorization_id,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _SessionEvent SessionEvent

// NewSessionEvent instantiates a new SessionEvent object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSessionEvent() *SessionEvent {
	this := SessionEvent{}
	return &this
}

// NewSessionEventWithDefaults instantiates a new SessionEvent object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSessionEventWithDefaults() *SessionEvent {
	this := SessionEvent{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SessionEvent) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SessionEvent) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *SessionEvent) SetId(v string) {
	o.Id = &v
}

// GetSessionEventType returns the SessionEventType field value if set, zero value otherwise.
func (o *SessionEvent) GetSessionEventType() string {
	if o == nil || isNil(o.SessionEventType) {
		var ret string
		return ret
	}
	return *o.SessionEventType
}

// GetSessionEventTypeOk returns a tuple with the SessionEventType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetSessionEventTypeOk() (*string, bool) {
	if o == nil || isNil(o.SessionEventType) {
    return nil, false
	}
	return o.SessionEventType, true
}

// HasSessionEventType returns a boolean if a field has been set.
func (o *SessionEvent) HasSessionEventType() bool {
	if o != nil && !isNil(o.SessionEventType) {
		return true
	}

	return false
}

// SetSessionEventType gets a reference to the given string and assigns it to the SessionEventType field.
func (o *SessionEvent) SetSessionEventType(v string) {
	o.SessionEventType = &v
}

// GetSessionId returns the SessionId field value if set, zero value otherwise.
func (o *SessionEvent) GetSessionId() string {
	if o == nil || isNil(o.SessionId) {
		var ret string
		return ret
	}
	return *o.SessionId
}

// GetSessionIdOk returns a tuple with the SessionId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetSessionIdOk() (*string, bool) {
	if o == nil || isNil(o.SessionId) {
    return nil, false
	}
	return o.SessionId, true
}

// HasSessionId returns a boolean if a field has been set.
func (o *SessionEvent) HasSessionId() bool {
	if o != nil && !isNil(o.SessionId) {
		return true
	}

	return false
}

// SetSessionId gets a reference to the given string and assigns it to the SessionId field.
func (o *SessionEvent) SetSessionId(v string) {
	o.SessionId = &v
}

// GetUserId returns the UserId field value if set, zero value otherwise.
func (o *SessionEvent) GetUserId() string {
	if o == nil || isNil(o.UserId) {
		var ret string
		return ret
	}
	return *o.UserId
}

// GetUserIdOk returns a tuple with the UserId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetUserIdOk() (*string, bool) {
	if o == nil || isNil(o.UserId) {
    return nil, false
	}
	return o.UserId, true
}

// HasUserId returns a boolean if a field has been set.
func (o *SessionEvent) HasUserId() bool {
	if o != nil && !isNil(o.UserId) {
		return true
	}

	return false
}

// SetUserId gets a reference to the given string and assigns it to the UserId field.
func (o *SessionEvent) SetUserId(v string) {
	o.UserId = &v
}

// GetCreatedDate returns the CreatedDate field value if set, zero value otherwise.
func (o *SessionEvent) GetCreatedDate() string {
	if o == nil || isNil(o.CreatedDate) {
		var ret string
		return ret
	}
	return *o.CreatedDate
}

// GetCreatedDateOk returns a tuple with the CreatedDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetCreatedDateOk() (*string, bool) {
	if o == nil || isNil(o.CreatedDate) {
    return nil, false
	}
	return o.CreatedDate, true
}

// HasCreatedDate returns a boolean if a field has been set.
func (o *SessionEvent) HasCreatedDate() bool {
	if o != nil && !isNil(o.CreatedDate) {
		return true
	}

	return false
}

// SetCreatedDate gets a reference to the given string and assigns it to the CreatedDate field.
func (o *SessionEvent) SetCreatedDate(v string) {
	o.CreatedDate = &v
}

// GetBrokerageStatusCode returns the BrokerageStatusCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SessionEvent) GetBrokerageStatusCode() int32 {
	if o == nil || isNil(o.BrokerageStatusCode.Get()) {
		var ret int32
		return ret
	}
	return *o.BrokerageStatusCode.Get()
}

// GetBrokerageStatusCodeOk returns a tuple with the BrokerageStatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SessionEvent) GetBrokerageStatusCodeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.BrokerageStatusCode.Get(), o.BrokerageStatusCode.IsSet()
}

// HasBrokerageStatusCode returns a boolean if a field has been set.
func (o *SessionEvent) HasBrokerageStatusCode() bool {
	if o != nil && o.BrokerageStatusCode.IsSet() {
		return true
	}

	return false
}

// SetBrokerageStatusCode gets a reference to the given NullableInt32 and assigns it to the BrokerageStatusCode field.
func (o *SessionEvent) SetBrokerageStatusCode(v int32) {
	o.BrokerageStatusCode.Set(&v)
}
// SetBrokerageStatusCodeNil sets the value for BrokerageStatusCode to be an explicit nil
func (o *SessionEvent) SetBrokerageStatusCodeNil() {
	o.BrokerageStatusCode.Set(nil)
}

// UnsetBrokerageStatusCode ensures that no value is present for BrokerageStatusCode, not even an explicit nil
func (o *SessionEvent) UnsetBrokerageStatusCode() {
	o.BrokerageStatusCode.Unset()
}

// GetBrokerageAuthorizationId returns the BrokerageAuthorizationId field value if set, zero value otherwise.
func (o *SessionEvent) GetBrokerageAuthorizationId() string {
	if o == nil || isNil(o.BrokerageAuthorizationId) {
		var ret string
		return ret
	}
	return *o.BrokerageAuthorizationId
}

// GetBrokerageAuthorizationIdOk returns a tuple with the BrokerageAuthorizationId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SessionEvent) GetBrokerageAuthorizationIdOk() (*string, bool) {
	if o == nil || isNil(o.BrokerageAuthorizationId) {
    return nil, false
	}
	return o.BrokerageAuthorizationId, true
}

// HasBrokerageAuthorizationId returns a boolean if a field has been set.
func (o *SessionEvent) HasBrokerageAuthorizationId() bool {
	if o != nil && !isNil(o.BrokerageAuthorizationId) {
		return true
	}

	return false
}

// SetBrokerageAuthorizationId gets a reference to the given string and assigns it to the BrokerageAuthorizationId field.
func (o *SessionEvent) SetBrokerageAuthorizationId(v string) {
	o.BrokerageAuthorizationId = &v
}

func (o SessionEvent) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.SessionEventType) {
		toSerialize["session_event_type"] = o.SessionEventType
	}
	if !isNil(o.SessionId) {
		toSerialize["session_id"] = o.SessionId
	}
	if !isNil(o.UserId) {
		toSerialize["user_id"] = o.UserId
	}
	if !isNil(o.CreatedDate) {
		toSerialize["created_date"] = o.CreatedDate
	}
	if o.BrokerageStatusCode.IsSet() {
		toSerialize["brokerage_status_code"] = o.BrokerageStatusCode.Get()
	}
	if !isNil(o.BrokerageAuthorizationId) {
		toSerialize["brokerage_authorization_id"] = o.BrokerageAuthorizationId
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *SessionEvent) UnmarshalJSON(bytes []byte) (err error) {
	varSessionEvent := _SessionEvent{}

	if err = json.Unmarshal(bytes, &varSessionEvent); err == nil {
		*o = SessionEvent(varSessionEvent)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "session_event_type")
		delete(additionalProperties, "session_id")
		delete(additionalProperties, "user_id")
		delete(additionalProperties, "created_date")
		delete(additionalProperties, "brokerage_status_code")
		delete(additionalProperties, "brokerage_authorization_id")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableSessionEvent struct {
	value *SessionEvent
	isSet bool
}

func (v NullableSessionEvent) Get() *SessionEvent {
	return v.value
}

func (v *NullableSessionEvent) Set(val *SessionEvent) {
	v.value = val
	v.isSet = true
}

func (v NullableSessionEvent) IsSet() bool {
	return v.isSet
}

func (v *NullableSessionEvent) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSessionEvent(val *SessionEvent) *NullableSessionEvent {
	return &NullableSessionEvent{value: val, isSet: true}
}

func (v NullableSessionEvent) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSessionEvent) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

