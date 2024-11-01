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

// SnapTradeLoginUserRequestBody Data to login a user via SnapTrade Partner
type SnapTradeLoginUserRequestBody struct {
	// Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.
	Broker *string `json:"broker,omitempty"`
	// When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
	ImmediateRedirect *bool `json:"immediateRedirect,omitempty"`
	// URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
	CustomRedirect *string `json:"customRedirect,omitempty"`
	// The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.
	Reconnect *string `json:"reconnect,omitempty"`
	// Sets whether the connection should be read-only or trade-enabled. Defaults to read-only if not specified.
	ConnectionType *string `json:"connectionType,omitempty"`
	// Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4.
	ConnectionPortalVersion *string `json:"connectionPortalVersion,omitempty"`
}

// NewSnapTradeLoginUserRequestBody instantiates a new SnapTradeLoginUserRequestBody object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSnapTradeLoginUserRequestBody() *SnapTradeLoginUserRequestBody {
	this := SnapTradeLoginUserRequestBody{}
	var connectionType string = "read"
	this.ConnectionType = &connectionType
	var connectionPortalVersion string = "v4"
	this.ConnectionPortalVersion = &connectionPortalVersion
	return &this
}

// NewSnapTradeLoginUserRequestBodyWithDefaults instantiates a new SnapTradeLoginUserRequestBody object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSnapTradeLoginUserRequestBodyWithDefaults() *SnapTradeLoginUserRequestBody {
	this := SnapTradeLoginUserRequestBody{}
	var connectionType string = "read"
	this.ConnectionType = &connectionType
	var connectionPortalVersion string = "v4"
	this.ConnectionPortalVersion = &connectionPortalVersion
	return &this
}

// GetBroker returns the Broker field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetBroker() string {
	if o == nil || isNil(o.Broker) {
		var ret string
		return ret
	}
	return *o.Broker
}

// GetBrokerOk returns a tuple with the Broker field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetBrokerOk() (*string, bool) {
	if o == nil || isNil(o.Broker) {
    return nil, false
	}
	return o.Broker, true
}

// HasBroker returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasBroker() bool {
	if o != nil && !isNil(o.Broker) {
		return true
	}

	return false
}

// SetBroker gets a reference to the given string and assigns it to the Broker field.
func (o *SnapTradeLoginUserRequestBody) SetBroker(v string) {
	o.Broker = &v
}

// GetImmediateRedirect returns the ImmediateRedirect field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetImmediateRedirect() bool {
	if o == nil || isNil(o.ImmediateRedirect) {
		var ret bool
		return ret
	}
	return *o.ImmediateRedirect
}

// GetImmediateRedirectOk returns a tuple with the ImmediateRedirect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetImmediateRedirectOk() (*bool, bool) {
	if o == nil || isNil(o.ImmediateRedirect) {
    return nil, false
	}
	return o.ImmediateRedirect, true
}

// HasImmediateRedirect returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasImmediateRedirect() bool {
	if o != nil && !isNil(o.ImmediateRedirect) {
		return true
	}

	return false
}

// SetImmediateRedirect gets a reference to the given bool and assigns it to the ImmediateRedirect field.
func (o *SnapTradeLoginUserRequestBody) SetImmediateRedirect(v bool) {
	o.ImmediateRedirect = &v
}

// GetCustomRedirect returns the CustomRedirect field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetCustomRedirect() string {
	if o == nil || isNil(o.CustomRedirect) {
		var ret string
		return ret
	}
	return *o.CustomRedirect
}

// GetCustomRedirectOk returns a tuple with the CustomRedirect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetCustomRedirectOk() (*string, bool) {
	if o == nil || isNil(o.CustomRedirect) {
    return nil, false
	}
	return o.CustomRedirect, true
}

// HasCustomRedirect returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasCustomRedirect() bool {
	if o != nil && !isNil(o.CustomRedirect) {
		return true
	}

	return false
}

// SetCustomRedirect gets a reference to the given string and assigns it to the CustomRedirect field.
func (o *SnapTradeLoginUserRequestBody) SetCustomRedirect(v string) {
	o.CustomRedirect = &v
}

// GetReconnect returns the Reconnect field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetReconnect() string {
	if o == nil || isNil(o.Reconnect) {
		var ret string
		return ret
	}
	return *o.Reconnect
}

// GetReconnectOk returns a tuple with the Reconnect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetReconnectOk() (*string, bool) {
	if o == nil || isNil(o.Reconnect) {
    return nil, false
	}
	return o.Reconnect, true
}

// HasReconnect returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasReconnect() bool {
	if o != nil && !isNil(o.Reconnect) {
		return true
	}

	return false
}

// SetReconnect gets a reference to the given string and assigns it to the Reconnect field.
func (o *SnapTradeLoginUserRequestBody) SetReconnect(v string) {
	o.Reconnect = &v
}

// GetConnectionType returns the ConnectionType field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetConnectionType() string {
	if o == nil || isNil(o.ConnectionType) {
		var ret string
		return ret
	}
	return *o.ConnectionType
}

// GetConnectionTypeOk returns a tuple with the ConnectionType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetConnectionTypeOk() (*string, bool) {
	if o == nil || isNil(o.ConnectionType) {
    return nil, false
	}
	return o.ConnectionType, true
}

// HasConnectionType returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasConnectionType() bool {
	if o != nil && !isNil(o.ConnectionType) {
		return true
	}

	return false
}

// SetConnectionType gets a reference to the given string and assigns it to the ConnectionType field.
func (o *SnapTradeLoginUserRequestBody) SetConnectionType(v string) {
	o.ConnectionType = &v
}

// GetConnectionPortalVersion returns the ConnectionPortalVersion field value if set, zero value otherwise.
func (o *SnapTradeLoginUserRequestBody) GetConnectionPortalVersion() string {
	if o == nil || isNil(o.ConnectionPortalVersion) {
		var ret string
		return ret
	}
	return *o.ConnectionPortalVersion
}

// GetConnectionPortalVersionOk returns a tuple with the ConnectionPortalVersion field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeLoginUserRequestBody) GetConnectionPortalVersionOk() (*string, bool) {
	if o == nil || isNil(o.ConnectionPortalVersion) {
    return nil, false
	}
	return o.ConnectionPortalVersion, true
}

// HasConnectionPortalVersion returns a boolean if a field has been set.
func (o *SnapTradeLoginUserRequestBody) HasConnectionPortalVersion() bool {
	if o != nil && !isNil(o.ConnectionPortalVersion) {
		return true
	}

	return false
}

// SetConnectionPortalVersion gets a reference to the given string and assigns it to the ConnectionPortalVersion field.
func (o *SnapTradeLoginUserRequestBody) SetConnectionPortalVersion(v string) {
	o.ConnectionPortalVersion = &v
}

func (o SnapTradeLoginUserRequestBody) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Broker) {
		toSerialize["broker"] = o.Broker
	}
	if !isNil(o.ImmediateRedirect) {
		toSerialize["immediateRedirect"] = o.ImmediateRedirect
	}
	if !isNil(o.CustomRedirect) {
		toSerialize["customRedirect"] = o.CustomRedirect
	}
	if !isNil(o.Reconnect) {
		toSerialize["reconnect"] = o.Reconnect
	}
	if !isNil(o.ConnectionType) {
		toSerialize["connectionType"] = o.ConnectionType
	}
	if !isNil(o.ConnectionPortalVersion) {
		toSerialize["connectionPortalVersion"] = o.ConnectionPortalVersion
	}
	return json.Marshal(toSerialize)
}

type NullableSnapTradeLoginUserRequestBody struct {
	value *SnapTradeLoginUserRequestBody
	isSet bool
}

func (v NullableSnapTradeLoginUserRequestBody) Get() *SnapTradeLoginUserRequestBody {
	return v.value
}

func (v *NullableSnapTradeLoginUserRequestBody) Set(val *SnapTradeLoginUserRequestBody) {
	v.value = val
	v.isSet = true
}

func (v NullableSnapTradeLoginUserRequestBody) IsSet() bool {
	return v.isSet
}

func (v *NullableSnapTradeLoginUserRequestBody) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSnapTradeLoginUserRequestBody(val *SnapTradeLoginUserRequestBody) *NullableSnapTradeLoginUserRequestBody {
	return &NullableSnapTradeLoginUserRequestBody{value: val, isSet: true}
}

func (v NullableSnapTradeLoginUserRequestBody) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSnapTradeLoginUserRequestBody) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


