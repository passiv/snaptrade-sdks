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

// BrokerageAuthorizationTypeReadOnlyBrokerage struct for BrokerageAuthorizationTypeReadOnlyBrokerage
type BrokerageAuthorizationTypeReadOnlyBrokerage struct {
	Id *string `json:"id,omitempty"`
	// Full name of the brokerage.
	Name *string `json:"name,omitempty"`
	// A unique identifier for that brokerage. It is usually the name of the brokerage in capital letters and will never change.
	Slug *string `json:"slug,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _BrokerageAuthorizationTypeReadOnlyBrokerage BrokerageAuthorizationTypeReadOnlyBrokerage

// NewBrokerageAuthorizationTypeReadOnlyBrokerage instantiates a new BrokerageAuthorizationTypeReadOnlyBrokerage object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewBrokerageAuthorizationTypeReadOnlyBrokerage() *BrokerageAuthorizationTypeReadOnlyBrokerage {
	this := BrokerageAuthorizationTypeReadOnlyBrokerage{}
	return &this
}

// NewBrokerageAuthorizationTypeReadOnlyBrokerageWithDefaults instantiates a new BrokerageAuthorizationTypeReadOnlyBrokerage object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewBrokerageAuthorizationTypeReadOnlyBrokerageWithDefaults() *BrokerageAuthorizationTypeReadOnlyBrokerage {
	this := BrokerageAuthorizationTypeReadOnlyBrokerage{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) SetId(v string) {
	o.Id = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetName() string {
	if o == nil || isNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetNameOk() (*string, bool) {
	if o == nil || isNil(o.Name) {
    return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) HasName() bool {
	if o != nil && !isNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) SetName(v string) {
	o.Name = &v
}

// GetSlug returns the Slug field value if set, zero value otherwise.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetSlug() string {
	if o == nil || isNil(o.Slug) {
		var ret string
		return ret
	}
	return *o.Slug
}

// GetSlugOk returns a tuple with the Slug field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) GetSlugOk() (*string, bool) {
	if o == nil || isNil(o.Slug) {
    return nil, false
	}
	return o.Slug, true
}

// HasSlug returns a boolean if a field has been set.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) HasSlug() bool {
	if o != nil && !isNil(o.Slug) {
		return true
	}

	return false
}

// SetSlug gets a reference to the given string and assigns it to the Slug field.
func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) SetSlug(v string) {
	o.Slug = &v
}

func (o BrokerageAuthorizationTypeReadOnlyBrokerage) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !isNil(o.Slug) {
		toSerialize["slug"] = o.Slug
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *BrokerageAuthorizationTypeReadOnlyBrokerage) UnmarshalJSON(bytes []byte) (err error) {
	varBrokerageAuthorizationTypeReadOnlyBrokerage := _BrokerageAuthorizationTypeReadOnlyBrokerage{}

	if err = json.Unmarshal(bytes, &varBrokerageAuthorizationTypeReadOnlyBrokerage); err == nil {
		*o = BrokerageAuthorizationTypeReadOnlyBrokerage(varBrokerageAuthorizationTypeReadOnlyBrokerage)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "name")
		delete(additionalProperties, "slug")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableBrokerageAuthorizationTypeReadOnlyBrokerage struct {
	value *BrokerageAuthorizationTypeReadOnlyBrokerage
	isSet bool
}

func (v NullableBrokerageAuthorizationTypeReadOnlyBrokerage) Get() *BrokerageAuthorizationTypeReadOnlyBrokerage {
	return v.value
}

func (v *NullableBrokerageAuthorizationTypeReadOnlyBrokerage) Set(val *BrokerageAuthorizationTypeReadOnlyBrokerage) {
	v.value = val
	v.isSet = true
}

func (v NullableBrokerageAuthorizationTypeReadOnlyBrokerage) IsSet() bool {
	return v.isSet
}

func (v *NullableBrokerageAuthorizationTypeReadOnlyBrokerage) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableBrokerageAuthorizationTypeReadOnlyBrokerage(val *BrokerageAuthorizationTypeReadOnlyBrokerage) *NullableBrokerageAuthorizationTypeReadOnlyBrokerage {
	return &NullableBrokerageAuthorizationTypeReadOnlyBrokerage{value: val, isSet: true}
}

func (v NullableBrokerageAuthorizationTypeReadOnlyBrokerage) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableBrokerageAuthorizationTypeReadOnlyBrokerage) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


