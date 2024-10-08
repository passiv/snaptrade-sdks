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

// PartnerData Configurations for your SnapTrade Client ID, including allowed brokerages and data access.
type PartnerData struct {
	// A short, unique identifier for your company or product.
	Slug *string `json:"slug,omitempty"`
	// Your company or product name.
	Name *string `json:"name,omitempty"`
	// URL to your company or product logo.
	LogoUrl *string `json:"logo_url,omitempty"`
	// Brokerages that can be accessed by your Client ID.
	AllowedBrokerages []Brokerage `json:"allowed_brokerages,omitempty"`
	// Whether trading is enabled for your SnapTrade Client ID.
	CanAccessTrades *bool `json:"can_access_trades,omitempty"`
	// Whether holdings data is enabled for your SnapTrade Client ID.
	CanAccessHoldings *bool `json:"can_access_holdings,omitempty"`
	// Whether account historical transactions is enabled for your SnapTrade Client ID.
	CanAccessAccountHistory *bool `json:"can_access_account_history,omitempty"`
	// Whether reference data is enabled for your SnapTrade Client ID.
	CanAccessReferenceData *bool `json:"can_access_reference_data,omitempty"`
	// Whether portfolio management is enabled for your SnapTrade Client ID.
	CanAccessPortfolioManagement *bool `json:"can_access_portfolio_management,omitempty"`
	// Whether recent order history is enabled for your SnapTrade Client ID.
	CanAccessOrders *bool `json:"can_access_orders,omitempty"`
	// URI to redirect user back to after user is done adding brokerage connections.
	RedirectUri *string `json:"redirect_uri,omitempty"`
	// Shows if pin is required by users to access connection page. This field has been deprecated.
	// Deprecated
	PinRequired *bool `json:"pin_required,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _PartnerData PartnerData

// NewPartnerData instantiates a new PartnerData object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPartnerData() *PartnerData {
	this := PartnerData{}
	return &this
}

// NewPartnerDataWithDefaults instantiates a new PartnerData object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPartnerDataWithDefaults() *PartnerData {
	this := PartnerData{}
	return &this
}

// GetSlug returns the Slug field value if set, zero value otherwise.
func (o *PartnerData) GetSlug() string {
	if o == nil || isNil(o.Slug) {
		var ret string
		return ret
	}
	return *o.Slug
}

// GetSlugOk returns a tuple with the Slug field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetSlugOk() (*string, bool) {
	if o == nil || isNil(o.Slug) {
    return nil, false
	}
	return o.Slug, true
}

// HasSlug returns a boolean if a field has been set.
func (o *PartnerData) HasSlug() bool {
	if o != nil && !isNil(o.Slug) {
		return true
	}

	return false
}

// SetSlug gets a reference to the given string and assigns it to the Slug field.
func (o *PartnerData) SetSlug(v string) {
	o.Slug = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *PartnerData) GetName() string {
	if o == nil || isNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetNameOk() (*string, bool) {
	if o == nil || isNil(o.Name) {
    return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *PartnerData) HasName() bool {
	if o != nil && !isNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *PartnerData) SetName(v string) {
	o.Name = &v
}

// GetLogoUrl returns the LogoUrl field value if set, zero value otherwise.
func (o *PartnerData) GetLogoUrl() string {
	if o == nil || isNil(o.LogoUrl) {
		var ret string
		return ret
	}
	return *o.LogoUrl
}

// GetLogoUrlOk returns a tuple with the LogoUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetLogoUrlOk() (*string, bool) {
	if o == nil || isNil(o.LogoUrl) {
    return nil, false
	}
	return o.LogoUrl, true
}

// HasLogoUrl returns a boolean if a field has been set.
func (o *PartnerData) HasLogoUrl() bool {
	if o != nil && !isNil(o.LogoUrl) {
		return true
	}

	return false
}

// SetLogoUrl gets a reference to the given string and assigns it to the LogoUrl field.
func (o *PartnerData) SetLogoUrl(v string) {
	o.LogoUrl = &v
}

// GetAllowedBrokerages returns the AllowedBrokerages field value if set, zero value otherwise.
func (o *PartnerData) GetAllowedBrokerages() []Brokerage {
	if o == nil || isNil(o.AllowedBrokerages) {
		var ret []Brokerage
		return ret
	}
	return o.AllowedBrokerages
}

// GetAllowedBrokeragesOk returns a tuple with the AllowedBrokerages field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetAllowedBrokeragesOk() ([]Brokerage, bool) {
	if o == nil || isNil(o.AllowedBrokerages) {
    return nil, false
	}
	return o.AllowedBrokerages, true
}

// HasAllowedBrokerages returns a boolean if a field has been set.
func (o *PartnerData) HasAllowedBrokerages() bool {
	if o != nil && !isNil(o.AllowedBrokerages) {
		return true
	}

	return false
}

// SetAllowedBrokerages gets a reference to the given []Brokerage and assigns it to the AllowedBrokerages field.
func (o *PartnerData) SetAllowedBrokerages(v []Brokerage) {
	o.AllowedBrokerages = v
}

// GetCanAccessTrades returns the CanAccessTrades field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessTrades() bool {
	if o == nil || isNil(o.CanAccessTrades) {
		var ret bool
		return ret
	}
	return *o.CanAccessTrades
}

// GetCanAccessTradesOk returns a tuple with the CanAccessTrades field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessTradesOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessTrades) {
    return nil, false
	}
	return o.CanAccessTrades, true
}

// HasCanAccessTrades returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessTrades() bool {
	if o != nil && !isNil(o.CanAccessTrades) {
		return true
	}

	return false
}

// SetCanAccessTrades gets a reference to the given bool and assigns it to the CanAccessTrades field.
func (o *PartnerData) SetCanAccessTrades(v bool) {
	o.CanAccessTrades = &v
}

// GetCanAccessHoldings returns the CanAccessHoldings field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessHoldings() bool {
	if o == nil || isNil(o.CanAccessHoldings) {
		var ret bool
		return ret
	}
	return *o.CanAccessHoldings
}

// GetCanAccessHoldingsOk returns a tuple with the CanAccessHoldings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessHoldingsOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessHoldings) {
    return nil, false
	}
	return o.CanAccessHoldings, true
}

// HasCanAccessHoldings returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessHoldings() bool {
	if o != nil && !isNil(o.CanAccessHoldings) {
		return true
	}

	return false
}

// SetCanAccessHoldings gets a reference to the given bool and assigns it to the CanAccessHoldings field.
func (o *PartnerData) SetCanAccessHoldings(v bool) {
	o.CanAccessHoldings = &v
}

// GetCanAccessAccountHistory returns the CanAccessAccountHistory field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessAccountHistory() bool {
	if o == nil || isNil(o.CanAccessAccountHistory) {
		var ret bool
		return ret
	}
	return *o.CanAccessAccountHistory
}

// GetCanAccessAccountHistoryOk returns a tuple with the CanAccessAccountHistory field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessAccountHistoryOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessAccountHistory) {
    return nil, false
	}
	return o.CanAccessAccountHistory, true
}

// HasCanAccessAccountHistory returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessAccountHistory() bool {
	if o != nil && !isNil(o.CanAccessAccountHistory) {
		return true
	}

	return false
}

// SetCanAccessAccountHistory gets a reference to the given bool and assigns it to the CanAccessAccountHistory field.
func (o *PartnerData) SetCanAccessAccountHistory(v bool) {
	o.CanAccessAccountHistory = &v
}

// GetCanAccessReferenceData returns the CanAccessReferenceData field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessReferenceData() bool {
	if o == nil || isNil(o.CanAccessReferenceData) {
		var ret bool
		return ret
	}
	return *o.CanAccessReferenceData
}

// GetCanAccessReferenceDataOk returns a tuple with the CanAccessReferenceData field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessReferenceDataOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessReferenceData) {
    return nil, false
	}
	return o.CanAccessReferenceData, true
}

// HasCanAccessReferenceData returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessReferenceData() bool {
	if o != nil && !isNil(o.CanAccessReferenceData) {
		return true
	}

	return false
}

// SetCanAccessReferenceData gets a reference to the given bool and assigns it to the CanAccessReferenceData field.
func (o *PartnerData) SetCanAccessReferenceData(v bool) {
	o.CanAccessReferenceData = &v
}

// GetCanAccessPortfolioManagement returns the CanAccessPortfolioManagement field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessPortfolioManagement() bool {
	if o == nil || isNil(o.CanAccessPortfolioManagement) {
		var ret bool
		return ret
	}
	return *o.CanAccessPortfolioManagement
}

// GetCanAccessPortfolioManagementOk returns a tuple with the CanAccessPortfolioManagement field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessPortfolioManagementOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessPortfolioManagement) {
    return nil, false
	}
	return o.CanAccessPortfolioManagement, true
}

// HasCanAccessPortfolioManagement returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessPortfolioManagement() bool {
	if o != nil && !isNil(o.CanAccessPortfolioManagement) {
		return true
	}

	return false
}

// SetCanAccessPortfolioManagement gets a reference to the given bool and assigns it to the CanAccessPortfolioManagement field.
func (o *PartnerData) SetCanAccessPortfolioManagement(v bool) {
	o.CanAccessPortfolioManagement = &v
}

// GetCanAccessOrders returns the CanAccessOrders field value if set, zero value otherwise.
func (o *PartnerData) GetCanAccessOrders() bool {
	if o == nil || isNil(o.CanAccessOrders) {
		var ret bool
		return ret
	}
	return *o.CanAccessOrders
}

// GetCanAccessOrdersOk returns a tuple with the CanAccessOrders field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetCanAccessOrdersOk() (*bool, bool) {
	if o == nil || isNil(o.CanAccessOrders) {
    return nil, false
	}
	return o.CanAccessOrders, true
}

// HasCanAccessOrders returns a boolean if a field has been set.
func (o *PartnerData) HasCanAccessOrders() bool {
	if o != nil && !isNil(o.CanAccessOrders) {
		return true
	}

	return false
}

// SetCanAccessOrders gets a reference to the given bool and assigns it to the CanAccessOrders field.
func (o *PartnerData) SetCanAccessOrders(v bool) {
	o.CanAccessOrders = &v
}

// GetRedirectUri returns the RedirectUri field value if set, zero value otherwise.
func (o *PartnerData) GetRedirectUri() string {
	if o == nil || isNil(o.RedirectUri) {
		var ret string
		return ret
	}
	return *o.RedirectUri
}

// GetRedirectUriOk returns a tuple with the RedirectUri field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PartnerData) GetRedirectUriOk() (*string, bool) {
	if o == nil || isNil(o.RedirectUri) {
    return nil, false
	}
	return o.RedirectUri, true
}

// HasRedirectUri returns a boolean if a field has been set.
func (o *PartnerData) HasRedirectUri() bool {
	if o != nil && !isNil(o.RedirectUri) {
		return true
	}

	return false
}

// SetRedirectUri gets a reference to the given string and assigns it to the RedirectUri field.
func (o *PartnerData) SetRedirectUri(v string) {
	o.RedirectUri = &v
}

// GetPinRequired returns the PinRequired field value if set, zero value otherwise.
// Deprecated
func (o *PartnerData) GetPinRequired() bool {
	if o == nil || isNil(o.PinRequired) {
		var ret bool
		return ret
	}
	return *o.PinRequired
}

// GetPinRequiredOk returns a tuple with the PinRequired field value if set, nil otherwise
// and a boolean to check if the value has been set.
// Deprecated
func (o *PartnerData) GetPinRequiredOk() (*bool, bool) {
	if o == nil || isNil(o.PinRequired) {
    return nil, false
	}
	return o.PinRequired, true
}

// HasPinRequired returns a boolean if a field has been set.
func (o *PartnerData) HasPinRequired() bool {
	if o != nil && !isNil(o.PinRequired) {
		return true
	}

	return false
}

// SetPinRequired gets a reference to the given bool and assigns it to the PinRequired field.
// Deprecated
func (o *PartnerData) SetPinRequired(v bool) {
	o.PinRequired = &v
}

func (o PartnerData) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Slug) {
		toSerialize["slug"] = o.Slug
	}
	if !isNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !isNil(o.LogoUrl) {
		toSerialize["logo_url"] = o.LogoUrl
	}
	if !isNil(o.AllowedBrokerages) {
		toSerialize["allowed_brokerages"] = o.AllowedBrokerages
	}
	if !isNil(o.CanAccessTrades) {
		toSerialize["can_access_trades"] = o.CanAccessTrades
	}
	if !isNil(o.CanAccessHoldings) {
		toSerialize["can_access_holdings"] = o.CanAccessHoldings
	}
	if !isNil(o.CanAccessAccountHistory) {
		toSerialize["can_access_account_history"] = o.CanAccessAccountHistory
	}
	if !isNil(o.CanAccessReferenceData) {
		toSerialize["can_access_reference_data"] = o.CanAccessReferenceData
	}
	if !isNil(o.CanAccessPortfolioManagement) {
		toSerialize["can_access_portfolio_management"] = o.CanAccessPortfolioManagement
	}
	if !isNil(o.CanAccessOrders) {
		toSerialize["can_access_orders"] = o.CanAccessOrders
	}
	if !isNil(o.RedirectUri) {
		toSerialize["redirect_uri"] = o.RedirectUri
	}
	if !isNil(o.PinRequired) {
		toSerialize["pin_required"] = o.PinRequired
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *PartnerData) UnmarshalJSON(bytes []byte) (err error) {
	varPartnerData := _PartnerData{}

	if err = json.Unmarshal(bytes, &varPartnerData); err == nil {
		*o = PartnerData(varPartnerData)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "slug")
		delete(additionalProperties, "name")
		delete(additionalProperties, "logo_url")
		delete(additionalProperties, "allowed_brokerages")
		delete(additionalProperties, "can_access_trades")
		delete(additionalProperties, "can_access_holdings")
		delete(additionalProperties, "can_access_account_history")
		delete(additionalProperties, "can_access_reference_data")
		delete(additionalProperties, "can_access_portfolio_management")
		delete(additionalProperties, "can_access_orders")
		delete(additionalProperties, "redirect_uri")
		delete(additionalProperties, "pin_required")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullablePartnerData struct {
	value *PartnerData
	isSet bool
}

func (v NullablePartnerData) Get() *PartnerData {
	return v.value
}

func (v *NullablePartnerData) Set(val *PartnerData) {
	v.value = val
	v.isSet = true
}

func (v NullablePartnerData) IsSet() bool {
	return v.isSet
}

func (v *NullablePartnerData) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePartnerData(val *PartnerData) *NullablePartnerData {
	return &NullablePartnerData{value: val, isSet: true}
}

func (v NullablePartnerData) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePartnerData) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


