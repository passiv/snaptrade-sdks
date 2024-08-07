# Brokerage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** | Full name of the brokerage. | [optional] 
**DisplayName** | Pointer to **string** | A display-friendly name of the brokerage. | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**AwsS3LogoUrl** | Pointer to **string** |  | [optional] 
**AwsS3SquareLogoUrl** | Pointer to **NullableString** |  | [optional] 
**OpenUrl** | Pointer to **NullableString** |  | [optional] 
**Slug** | Pointer to **string** | A unique identifier for that brokerage. It is usually the name of the brokerage in capital letters and will never change. | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Enabled** | Pointer to **bool** |  | [optional] 
**MaintenanceMode** | Pointer to **bool** |  | [optional] 
**AllowsFractionalUnits** | Pointer to **NullableBool** |  | [optional] 
**AllowsTrading** | Pointer to **NullableBool** |  | [optional] 
**HasReporting** | Pointer to **NullableBool** |  | [optional] 
**IsRealTimeConnection** | Pointer to **bool** |  | [optional] 
**AllowsTradingThroughSnaptradeApi** | Pointer to **NullableBool** |  | [optional] 
**IsScrapingIntegration** | Pointer to **bool** |  | [optional] 
**DefaultCurrency** | Pointer to **string** |  | [optional] 
**BrokerageType** | Pointer to [**BrokerageType**](BrokerageType.md) |  | [optional] 
**Exchanges** | Pointer to **[]interface{}** | List of exchange ID supported by brokerage | [optional] 

## Methods

### NewBrokerage

`func NewBrokerage() *Brokerage`

NewBrokerage instantiates a new Brokerage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageWithDefaults

`func NewBrokerageWithDefaults() *Brokerage`

NewBrokerageWithDefaults instantiates a new Brokerage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Brokerage) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Brokerage) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Brokerage) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Brokerage) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *Brokerage) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Brokerage) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Brokerage) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Brokerage) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDisplayName

`func (o *Brokerage) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *Brokerage) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *Brokerage) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *Brokerage) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetDescription

`func (o *Brokerage) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Brokerage) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Brokerage) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Brokerage) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetAwsS3LogoUrl

`func (o *Brokerage) GetAwsS3LogoUrl() string`

GetAwsS3LogoUrl returns the AwsS3LogoUrl field if non-nil, zero value otherwise.

### GetAwsS3LogoUrlOk

`func (o *Brokerage) GetAwsS3LogoUrlOk() (*string, bool)`

GetAwsS3LogoUrlOk returns a tuple with the AwsS3LogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAwsS3LogoUrl

`func (o *Brokerage) SetAwsS3LogoUrl(v string)`

SetAwsS3LogoUrl sets AwsS3LogoUrl field to given value.

### HasAwsS3LogoUrl

`func (o *Brokerage) HasAwsS3LogoUrl() bool`

HasAwsS3LogoUrl returns a boolean if a field has been set.

### GetAwsS3SquareLogoUrl

`func (o *Brokerage) GetAwsS3SquareLogoUrl() string`

GetAwsS3SquareLogoUrl returns the AwsS3SquareLogoUrl field if non-nil, zero value otherwise.

### GetAwsS3SquareLogoUrlOk

`func (o *Brokerage) GetAwsS3SquareLogoUrlOk() (*string, bool)`

GetAwsS3SquareLogoUrlOk returns a tuple with the AwsS3SquareLogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAwsS3SquareLogoUrl

`func (o *Brokerage) SetAwsS3SquareLogoUrl(v string)`

SetAwsS3SquareLogoUrl sets AwsS3SquareLogoUrl field to given value.

### HasAwsS3SquareLogoUrl

`func (o *Brokerage) HasAwsS3SquareLogoUrl() bool`

HasAwsS3SquareLogoUrl returns a boolean if a field has been set.

### SetAwsS3SquareLogoUrlNil

`func (o *Brokerage) SetAwsS3SquareLogoUrlNil(b bool)`

 SetAwsS3SquareLogoUrlNil sets the value for AwsS3SquareLogoUrl to be an explicit nil

### UnsetAwsS3SquareLogoUrl
`func (o *Brokerage) UnsetAwsS3SquareLogoUrl()`

UnsetAwsS3SquareLogoUrl ensures that no value is present for AwsS3SquareLogoUrl, not even an explicit nil
### GetOpenUrl

`func (o *Brokerage) GetOpenUrl() string`

GetOpenUrl returns the OpenUrl field if non-nil, zero value otherwise.

### GetOpenUrlOk

`func (o *Brokerage) GetOpenUrlOk() (*string, bool)`

GetOpenUrlOk returns a tuple with the OpenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenUrl

`func (o *Brokerage) SetOpenUrl(v string)`

SetOpenUrl sets OpenUrl field to given value.

### HasOpenUrl

`func (o *Brokerage) HasOpenUrl() bool`

HasOpenUrl returns a boolean if a field has been set.

### SetOpenUrlNil

`func (o *Brokerage) SetOpenUrlNil(b bool)`

 SetOpenUrlNil sets the value for OpenUrl to be an explicit nil

### UnsetOpenUrl
`func (o *Brokerage) UnsetOpenUrl()`

UnsetOpenUrl ensures that no value is present for OpenUrl, not even an explicit nil
### GetSlug

`func (o *Brokerage) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Brokerage) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Brokerage) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *Brokerage) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetUrl

`func (o *Brokerage) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *Brokerage) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *Brokerage) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *Brokerage) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetEnabled

`func (o *Brokerage) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *Brokerage) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *Brokerage) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *Brokerage) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetMaintenanceMode

`func (o *Brokerage) GetMaintenanceMode() bool`

GetMaintenanceMode returns the MaintenanceMode field if non-nil, zero value otherwise.

### GetMaintenanceModeOk

`func (o *Brokerage) GetMaintenanceModeOk() (*bool, bool)`

GetMaintenanceModeOk returns a tuple with the MaintenanceMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaintenanceMode

`func (o *Brokerage) SetMaintenanceMode(v bool)`

SetMaintenanceMode sets MaintenanceMode field to given value.

### HasMaintenanceMode

`func (o *Brokerage) HasMaintenanceMode() bool`

HasMaintenanceMode returns a boolean if a field has been set.

### GetAllowsFractionalUnits

`func (o *Brokerage) GetAllowsFractionalUnits() bool`

GetAllowsFractionalUnits returns the AllowsFractionalUnits field if non-nil, zero value otherwise.

### GetAllowsFractionalUnitsOk

`func (o *Brokerage) GetAllowsFractionalUnitsOk() (*bool, bool)`

GetAllowsFractionalUnitsOk returns a tuple with the AllowsFractionalUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowsFractionalUnits

`func (o *Brokerage) SetAllowsFractionalUnits(v bool)`

SetAllowsFractionalUnits sets AllowsFractionalUnits field to given value.

### HasAllowsFractionalUnits

`func (o *Brokerage) HasAllowsFractionalUnits() bool`

HasAllowsFractionalUnits returns a boolean if a field has been set.

### SetAllowsFractionalUnitsNil

`func (o *Brokerage) SetAllowsFractionalUnitsNil(b bool)`

 SetAllowsFractionalUnitsNil sets the value for AllowsFractionalUnits to be an explicit nil

### UnsetAllowsFractionalUnits
`func (o *Brokerage) UnsetAllowsFractionalUnits()`

UnsetAllowsFractionalUnits ensures that no value is present for AllowsFractionalUnits, not even an explicit nil
### GetAllowsTrading

`func (o *Brokerage) GetAllowsTrading() bool`

GetAllowsTrading returns the AllowsTrading field if non-nil, zero value otherwise.

### GetAllowsTradingOk

`func (o *Brokerage) GetAllowsTradingOk() (*bool, bool)`

GetAllowsTradingOk returns a tuple with the AllowsTrading field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowsTrading

`func (o *Brokerage) SetAllowsTrading(v bool)`

SetAllowsTrading sets AllowsTrading field to given value.

### HasAllowsTrading

`func (o *Brokerage) HasAllowsTrading() bool`

HasAllowsTrading returns a boolean if a field has been set.

### SetAllowsTradingNil

`func (o *Brokerage) SetAllowsTradingNil(b bool)`

 SetAllowsTradingNil sets the value for AllowsTrading to be an explicit nil

### UnsetAllowsTrading
`func (o *Brokerage) UnsetAllowsTrading()`

UnsetAllowsTrading ensures that no value is present for AllowsTrading, not even an explicit nil
### GetHasReporting

`func (o *Brokerage) GetHasReporting() bool`

GetHasReporting returns the HasReporting field if non-nil, zero value otherwise.

### GetHasReportingOk

`func (o *Brokerage) GetHasReportingOk() (*bool, bool)`

GetHasReportingOk returns a tuple with the HasReporting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHasReporting

`func (o *Brokerage) SetHasReporting(v bool)`

SetHasReporting sets HasReporting field to given value.

### HasHasReporting

`func (o *Brokerage) HasHasReporting() bool`

HasHasReporting returns a boolean if a field has been set.

### SetHasReportingNil

`func (o *Brokerage) SetHasReportingNil(b bool)`

 SetHasReportingNil sets the value for HasReporting to be an explicit nil

### UnsetHasReporting
`func (o *Brokerage) UnsetHasReporting()`

UnsetHasReporting ensures that no value is present for HasReporting, not even an explicit nil
### GetIsRealTimeConnection

`func (o *Brokerage) GetIsRealTimeConnection() bool`

GetIsRealTimeConnection returns the IsRealTimeConnection field if non-nil, zero value otherwise.

### GetIsRealTimeConnectionOk

`func (o *Brokerage) GetIsRealTimeConnectionOk() (*bool, bool)`

GetIsRealTimeConnectionOk returns a tuple with the IsRealTimeConnection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRealTimeConnection

`func (o *Brokerage) SetIsRealTimeConnection(v bool)`

SetIsRealTimeConnection sets IsRealTimeConnection field to given value.

### HasIsRealTimeConnection

`func (o *Brokerage) HasIsRealTimeConnection() bool`

HasIsRealTimeConnection returns a boolean if a field has been set.

### GetAllowsTradingThroughSnaptradeApi

`func (o *Brokerage) GetAllowsTradingThroughSnaptradeApi() bool`

GetAllowsTradingThroughSnaptradeApi returns the AllowsTradingThroughSnaptradeApi field if non-nil, zero value otherwise.

### GetAllowsTradingThroughSnaptradeApiOk

`func (o *Brokerage) GetAllowsTradingThroughSnaptradeApiOk() (*bool, bool)`

GetAllowsTradingThroughSnaptradeApiOk returns a tuple with the AllowsTradingThroughSnaptradeApi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowsTradingThroughSnaptradeApi

`func (o *Brokerage) SetAllowsTradingThroughSnaptradeApi(v bool)`

SetAllowsTradingThroughSnaptradeApi sets AllowsTradingThroughSnaptradeApi field to given value.

### HasAllowsTradingThroughSnaptradeApi

`func (o *Brokerage) HasAllowsTradingThroughSnaptradeApi() bool`

HasAllowsTradingThroughSnaptradeApi returns a boolean if a field has been set.

### SetAllowsTradingThroughSnaptradeApiNil

`func (o *Brokerage) SetAllowsTradingThroughSnaptradeApiNil(b bool)`

 SetAllowsTradingThroughSnaptradeApiNil sets the value for AllowsTradingThroughSnaptradeApi to be an explicit nil

### UnsetAllowsTradingThroughSnaptradeApi
`func (o *Brokerage) UnsetAllowsTradingThroughSnaptradeApi()`

UnsetAllowsTradingThroughSnaptradeApi ensures that no value is present for AllowsTradingThroughSnaptradeApi, not even an explicit nil
### GetIsScrapingIntegration

`func (o *Brokerage) GetIsScrapingIntegration() bool`

GetIsScrapingIntegration returns the IsScrapingIntegration field if non-nil, zero value otherwise.

### GetIsScrapingIntegrationOk

`func (o *Brokerage) GetIsScrapingIntegrationOk() (*bool, bool)`

GetIsScrapingIntegrationOk returns a tuple with the IsScrapingIntegration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsScrapingIntegration

`func (o *Brokerage) SetIsScrapingIntegration(v bool)`

SetIsScrapingIntegration sets IsScrapingIntegration field to given value.

### HasIsScrapingIntegration

`func (o *Brokerage) HasIsScrapingIntegration() bool`

HasIsScrapingIntegration returns a boolean if a field has been set.

### GetDefaultCurrency

`func (o *Brokerage) GetDefaultCurrency() string`

GetDefaultCurrency returns the DefaultCurrency field if non-nil, zero value otherwise.

### GetDefaultCurrencyOk

`func (o *Brokerage) GetDefaultCurrencyOk() (*string, bool)`

GetDefaultCurrencyOk returns a tuple with the DefaultCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultCurrency

`func (o *Brokerage) SetDefaultCurrency(v string)`

SetDefaultCurrency sets DefaultCurrency field to given value.

### HasDefaultCurrency

`func (o *Brokerage) HasDefaultCurrency() bool`

HasDefaultCurrency returns a boolean if a field has been set.

### GetBrokerageType

`func (o *Brokerage) GetBrokerageType() BrokerageType`

GetBrokerageType returns the BrokerageType field if non-nil, zero value otherwise.

### GetBrokerageTypeOk

`func (o *Brokerage) GetBrokerageTypeOk() (*BrokerageType, bool)`

GetBrokerageTypeOk returns a tuple with the BrokerageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageType

`func (o *Brokerage) SetBrokerageType(v BrokerageType)`

SetBrokerageType sets BrokerageType field to given value.

### HasBrokerageType

`func (o *Brokerage) HasBrokerageType() bool`

HasBrokerageType returns a boolean if a field has been set.

### GetExchanges

`func (o *Brokerage) GetExchanges() []interface{}`

GetExchanges returns the Exchanges field if non-nil, zero value otherwise.

### GetExchangesOk

`func (o *Brokerage) GetExchangesOk() (*[]interface{}, bool)`

GetExchangesOk returns a tuple with the Exchanges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchanges

`func (o *Brokerage) SetExchanges(v []interface{})`

SetExchanges sets Exchanges field to given value.

### HasExchanges

`func (o *Brokerage) HasExchanges() bool`

HasExchanges returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


