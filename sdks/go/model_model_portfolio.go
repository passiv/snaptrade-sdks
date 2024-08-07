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

// ModelPortfolio struct for ModelPortfolio
type ModelPortfolio struct {
	Id *string `json:"id,omitempty"`
	Name *string `json:"name,omitempty"`
	// Enum definitions -> [-1: Unassigned, 0: Security Model Portfolio, 1: Asset Class Portfolio]
	ModelType *int32 `json:"model_type,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _ModelPortfolio ModelPortfolio

// NewModelPortfolio instantiates a new ModelPortfolio object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewModelPortfolio() *ModelPortfolio {
	this := ModelPortfolio{}
	var modelType int32 = -1
	this.ModelType = &modelType
	return &this
}

// NewModelPortfolioWithDefaults instantiates a new ModelPortfolio object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewModelPortfolioWithDefaults() *ModelPortfolio {
	this := ModelPortfolio{}
	var modelType int32 = -1
	this.ModelType = &modelType
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *ModelPortfolio) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ModelPortfolio) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *ModelPortfolio) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *ModelPortfolio) SetId(v string) {
	o.Id = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *ModelPortfolio) GetName() string {
	if o == nil || isNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ModelPortfolio) GetNameOk() (*string, bool) {
	if o == nil || isNil(o.Name) {
    return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *ModelPortfolio) HasName() bool {
	if o != nil && !isNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *ModelPortfolio) SetName(v string) {
	o.Name = &v
}

// GetModelType returns the ModelType field value if set, zero value otherwise.
func (o *ModelPortfolio) GetModelType() int32 {
	if o == nil || isNil(o.ModelType) {
		var ret int32
		return ret
	}
	return *o.ModelType
}

// GetModelTypeOk returns a tuple with the ModelType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ModelPortfolio) GetModelTypeOk() (*int32, bool) {
	if o == nil || isNil(o.ModelType) {
    return nil, false
	}
	return o.ModelType, true
}

// HasModelType returns a boolean if a field has been set.
func (o *ModelPortfolio) HasModelType() bool {
	if o != nil && !isNil(o.ModelType) {
		return true
	}

	return false
}

// SetModelType gets a reference to the given int32 and assigns it to the ModelType field.
func (o *ModelPortfolio) SetModelType(v int32) {
	o.ModelType = &v
}

func (o ModelPortfolio) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !isNil(o.ModelType) {
		toSerialize["model_type"] = o.ModelType
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *ModelPortfolio) UnmarshalJSON(bytes []byte) (err error) {
	varModelPortfolio := _ModelPortfolio{}

	if err = json.Unmarshal(bytes, &varModelPortfolio); err == nil {
		*o = ModelPortfolio(varModelPortfolio)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "name")
		delete(additionalProperties, "model_type")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableModelPortfolio struct {
	value *ModelPortfolio
	isSet bool
}

func (v NullableModelPortfolio) Get() *ModelPortfolio {
	return v.value
}

func (v *NullableModelPortfolio) Set(val *ModelPortfolio) {
	v.value = val
	v.isSet = true
}

func (v NullableModelPortfolio) IsSet() bool {
	return v.isSet
}

func (v *NullableModelPortfolio) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableModelPortfolio(val *ModelPortfolio) *NullableModelPortfolio {
	return &NullableModelPortfolio{value: val, isSet: true}
}

func (v NullableModelPortfolio) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableModelPortfolio) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


