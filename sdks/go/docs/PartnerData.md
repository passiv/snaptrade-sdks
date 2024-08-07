# PartnerData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RedirectUri** | Pointer to **string** | URI to redirect user back to after user is done adding brokerage connections | [optional] 
**AllowedBrokerages** | Pointer to [**[]Brokerage**](Brokerage.md) | Brokerages that can be accessed by partners | [optional] 
**Name** | Pointer to **string** | Name of Snaptrade Partner | [optional] 
**Slug** | Pointer to **string** | Slug of Snaptrade Partner | [optional] 
**LogoUrl** | Pointer to **string** | URL to partner&#39;s logo | [optional] 
**PinRequired** | Pointer to **bool** | Shows if pin is required by users to access connection page | [optional] 
**CanAccessTrades** | Pointer to **bool** | Shows if users of Snaptrade partners can access trade endpoints | [optional] 
**CanAccessHoldings** | Pointer to **bool** | Shows if Snaptrade partners can get user holdings data | [optional] 
**CanAccessAccountHistory** | Pointer to **bool** | Shows if Snaptrade partners can get users account history data | [optional] 
**CanAccessReferenceData** | Pointer to **bool** | Shows if Snaptrade partners can get users holdings data | [optional] 
**CanAccessPortfolioManagement** | Pointer to **bool** | Shows if users Snaptrade partners can access portfolio group management features | [optional] 
**CanAccessOrders** | Pointer to **bool** | Shows if Snaptrade partners can get users account order history | [optional] 

## Methods

### NewPartnerData

`func NewPartnerData() *PartnerData`

NewPartnerData instantiates a new PartnerData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPartnerDataWithDefaults

`func NewPartnerDataWithDefaults() *PartnerData`

NewPartnerDataWithDefaults instantiates a new PartnerData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRedirectUri

`func (o *PartnerData) GetRedirectUri() string`

GetRedirectUri returns the RedirectUri field if non-nil, zero value otherwise.

### GetRedirectUriOk

`func (o *PartnerData) GetRedirectUriOk() (*string, bool)`

GetRedirectUriOk returns a tuple with the RedirectUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUri

`func (o *PartnerData) SetRedirectUri(v string)`

SetRedirectUri sets RedirectUri field to given value.

### HasRedirectUri

`func (o *PartnerData) HasRedirectUri() bool`

HasRedirectUri returns a boolean if a field has been set.

### GetAllowedBrokerages

`func (o *PartnerData) GetAllowedBrokerages() []Brokerage`

GetAllowedBrokerages returns the AllowedBrokerages field if non-nil, zero value otherwise.

### GetAllowedBrokeragesOk

`func (o *PartnerData) GetAllowedBrokeragesOk() (*[]Brokerage, bool)`

GetAllowedBrokeragesOk returns a tuple with the AllowedBrokerages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedBrokerages

`func (o *PartnerData) SetAllowedBrokerages(v []Brokerage)`

SetAllowedBrokerages sets AllowedBrokerages field to given value.

### HasAllowedBrokerages

`func (o *PartnerData) HasAllowedBrokerages() bool`

HasAllowedBrokerages returns a boolean if a field has been set.

### GetName

`func (o *PartnerData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PartnerData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PartnerData) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PartnerData) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSlug

`func (o *PartnerData) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *PartnerData) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *PartnerData) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *PartnerData) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetLogoUrl

`func (o *PartnerData) GetLogoUrl() string`

GetLogoUrl returns the LogoUrl field if non-nil, zero value otherwise.

### GetLogoUrlOk

`func (o *PartnerData) GetLogoUrlOk() (*string, bool)`

GetLogoUrlOk returns a tuple with the LogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUrl

`func (o *PartnerData) SetLogoUrl(v string)`

SetLogoUrl sets LogoUrl field to given value.

### HasLogoUrl

`func (o *PartnerData) HasLogoUrl() bool`

HasLogoUrl returns a boolean if a field has been set.

### GetPinRequired

`func (o *PartnerData) GetPinRequired() bool`

GetPinRequired returns the PinRequired field if non-nil, zero value otherwise.

### GetPinRequiredOk

`func (o *PartnerData) GetPinRequiredOk() (*bool, bool)`

GetPinRequiredOk returns a tuple with the PinRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPinRequired

`func (o *PartnerData) SetPinRequired(v bool)`

SetPinRequired sets PinRequired field to given value.

### HasPinRequired

`func (o *PartnerData) HasPinRequired() bool`

HasPinRequired returns a boolean if a field has been set.

### GetCanAccessTrades

`func (o *PartnerData) GetCanAccessTrades() bool`

GetCanAccessTrades returns the CanAccessTrades field if non-nil, zero value otherwise.

### GetCanAccessTradesOk

`func (o *PartnerData) GetCanAccessTradesOk() (*bool, bool)`

GetCanAccessTradesOk returns a tuple with the CanAccessTrades field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessTrades

`func (o *PartnerData) SetCanAccessTrades(v bool)`

SetCanAccessTrades sets CanAccessTrades field to given value.

### HasCanAccessTrades

`func (o *PartnerData) HasCanAccessTrades() bool`

HasCanAccessTrades returns a boolean if a field has been set.

### GetCanAccessHoldings

`func (o *PartnerData) GetCanAccessHoldings() bool`

GetCanAccessHoldings returns the CanAccessHoldings field if non-nil, zero value otherwise.

### GetCanAccessHoldingsOk

`func (o *PartnerData) GetCanAccessHoldingsOk() (*bool, bool)`

GetCanAccessHoldingsOk returns a tuple with the CanAccessHoldings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessHoldings

`func (o *PartnerData) SetCanAccessHoldings(v bool)`

SetCanAccessHoldings sets CanAccessHoldings field to given value.

### HasCanAccessHoldings

`func (o *PartnerData) HasCanAccessHoldings() bool`

HasCanAccessHoldings returns a boolean if a field has been set.

### GetCanAccessAccountHistory

`func (o *PartnerData) GetCanAccessAccountHistory() bool`

GetCanAccessAccountHistory returns the CanAccessAccountHistory field if non-nil, zero value otherwise.

### GetCanAccessAccountHistoryOk

`func (o *PartnerData) GetCanAccessAccountHistoryOk() (*bool, bool)`

GetCanAccessAccountHistoryOk returns a tuple with the CanAccessAccountHistory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessAccountHistory

`func (o *PartnerData) SetCanAccessAccountHistory(v bool)`

SetCanAccessAccountHistory sets CanAccessAccountHistory field to given value.

### HasCanAccessAccountHistory

`func (o *PartnerData) HasCanAccessAccountHistory() bool`

HasCanAccessAccountHistory returns a boolean if a field has been set.

### GetCanAccessReferenceData

`func (o *PartnerData) GetCanAccessReferenceData() bool`

GetCanAccessReferenceData returns the CanAccessReferenceData field if non-nil, zero value otherwise.

### GetCanAccessReferenceDataOk

`func (o *PartnerData) GetCanAccessReferenceDataOk() (*bool, bool)`

GetCanAccessReferenceDataOk returns a tuple with the CanAccessReferenceData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessReferenceData

`func (o *PartnerData) SetCanAccessReferenceData(v bool)`

SetCanAccessReferenceData sets CanAccessReferenceData field to given value.

### HasCanAccessReferenceData

`func (o *PartnerData) HasCanAccessReferenceData() bool`

HasCanAccessReferenceData returns a boolean if a field has been set.

### GetCanAccessPortfolioManagement

`func (o *PartnerData) GetCanAccessPortfolioManagement() bool`

GetCanAccessPortfolioManagement returns the CanAccessPortfolioManagement field if non-nil, zero value otherwise.

### GetCanAccessPortfolioManagementOk

`func (o *PartnerData) GetCanAccessPortfolioManagementOk() (*bool, bool)`

GetCanAccessPortfolioManagementOk returns a tuple with the CanAccessPortfolioManagement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessPortfolioManagement

`func (o *PartnerData) SetCanAccessPortfolioManagement(v bool)`

SetCanAccessPortfolioManagement sets CanAccessPortfolioManagement field to given value.

### HasCanAccessPortfolioManagement

`func (o *PartnerData) HasCanAccessPortfolioManagement() bool`

HasCanAccessPortfolioManagement returns a boolean if a field has been set.

### GetCanAccessOrders

`func (o *PartnerData) GetCanAccessOrders() bool`

GetCanAccessOrders returns the CanAccessOrders field if non-nil, zero value otherwise.

### GetCanAccessOrdersOk

`func (o *PartnerData) GetCanAccessOrdersOk() (*bool, bool)`

GetCanAccessOrdersOk returns a tuple with the CanAccessOrders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAccessOrders

`func (o *PartnerData) SetCanAccessOrders(v bool)`

SetCanAccessOrders sets CanAccessOrders field to given value.

### HasCanAccessOrders

`func (o *PartnerData) HasCanAccessOrders() bool`

HasCanAccessOrders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


