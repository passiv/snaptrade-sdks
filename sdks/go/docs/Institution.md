# Institution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** | A short, unique identifier for the institution. It is usually the name in capital letters and will never change. It matches the &#x60;slug&#x60; of the same brokerage in &#x60;GET /brokerages&#x60;. | 
**Name** | **string** | Full name of the institution. | 
**DisplayName** | **string** | A display-friendly name of the institution. | 
**Description** | **NullableString** | A brief description of the institution. | 
**Website** | **NullableString** | URL of the institution&#39;s website. | 
**LogoUrl** | **string** | URL of the institution&#39;s rectangular logo. | 
**SquareLogoUrl** | **NullableString** | URL of the institution&#39;s square logo. | 
**ReleaseStage** | **string** | How mature the integration is. - &#x60;GENERALLY_AVAILABLE&#x60;: fully supported and validated for production use. - &#x60;BETA&#x60;: production-ready, with ongoing validation and improvements.  | 
**Regions** | **[]string** | Regions where end users can connect to this institution. - &#x60;US&#x60;: United States - &#x60;CA&#x60;: Canada - &#x60;EUROPE&#x60;: Europe, including the United Kingdom - &#x60;AU&#x60;: Australia - &#x60;IN&#x60;: India  | 
**Connection** | [**NullableInstitutionConnectionNullable**](InstitutionConnectionNullable.md) |  | 

## Methods

### NewInstitution

`func NewInstitution(slug string, name string, displayName string, description NullableString, website NullableString, logoUrl string, squareLogoUrl NullableString, releaseStage string, regions []string, connection NullableInstitutionConnectionNullable, ) *Institution`

NewInstitution instantiates a new Institution object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstitutionWithDefaults

`func NewInstitutionWithDefaults() *Institution`

NewInstitutionWithDefaults instantiates a new Institution object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSlug

`func (o *Institution) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Institution) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Institution) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetName

`func (o *Institution) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Institution) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Institution) SetName(v string)`

SetName sets Name field to given value.


### GetDisplayName

`func (o *Institution) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *Institution) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *Institution) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.


### GetDescription

`func (o *Institution) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Institution) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Institution) SetDescription(v string)`

SetDescription sets Description field to given value.


### SetDescriptionNil

`func (o *Institution) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *Institution) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetWebsite

`func (o *Institution) GetWebsite() string`

GetWebsite returns the Website field if non-nil, zero value otherwise.

### GetWebsiteOk

`func (o *Institution) GetWebsiteOk() (*string, bool)`

GetWebsiteOk returns a tuple with the Website field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebsite

`func (o *Institution) SetWebsite(v string)`

SetWebsite sets Website field to given value.


### SetWebsiteNil

`func (o *Institution) SetWebsiteNil(b bool)`

 SetWebsiteNil sets the value for Website to be an explicit nil

### UnsetWebsite
`func (o *Institution) UnsetWebsite()`

UnsetWebsite ensures that no value is present for Website, not even an explicit nil
### GetLogoUrl

`func (o *Institution) GetLogoUrl() string`

GetLogoUrl returns the LogoUrl field if non-nil, zero value otherwise.

### GetLogoUrlOk

`func (o *Institution) GetLogoUrlOk() (*string, bool)`

GetLogoUrlOk returns a tuple with the LogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUrl

`func (o *Institution) SetLogoUrl(v string)`

SetLogoUrl sets LogoUrl field to given value.


### GetSquareLogoUrl

`func (o *Institution) GetSquareLogoUrl() string`

GetSquareLogoUrl returns the SquareLogoUrl field if non-nil, zero value otherwise.

### GetSquareLogoUrlOk

`func (o *Institution) GetSquareLogoUrlOk() (*string, bool)`

GetSquareLogoUrlOk returns a tuple with the SquareLogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSquareLogoUrl

`func (o *Institution) SetSquareLogoUrl(v string)`

SetSquareLogoUrl sets SquareLogoUrl field to given value.


### SetSquareLogoUrlNil

`func (o *Institution) SetSquareLogoUrlNil(b bool)`

 SetSquareLogoUrlNil sets the value for SquareLogoUrl to be an explicit nil

### UnsetSquareLogoUrl
`func (o *Institution) UnsetSquareLogoUrl()`

UnsetSquareLogoUrl ensures that no value is present for SquareLogoUrl, not even an explicit nil
### GetReleaseStage

`func (o *Institution) GetReleaseStage() string`

GetReleaseStage returns the ReleaseStage field if non-nil, zero value otherwise.

### GetReleaseStageOk

`func (o *Institution) GetReleaseStageOk() (*string, bool)`

GetReleaseStageOk returns a tuple with the ReleaseStage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReleaseStage

`func (o *Institution) SetReleaseStage(v string)`

SetReleaseStage sets ReleaseStage field to given value.


### GetRegions

`func (o *Institution) GetRegions() []string`

GetRegions returns the Regions field if non-nil, zero value otherwise.

### GetRegionsOk

`func (o *Institution) GetRegionsOk() (*[]string, bool)`

GetRegionsOk returns a tuple with the Regions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegions

`func (o *Institution) SetRegions(v []string)`

SetRegions sets Regions field to given value.


### SetRegionsNil

`func (o *Institution) SetRegionsNil(b bool)`

 SetRegionsNil sets the value for Regions to be an explicit nil

### UnsetRegions
`func (o *Institution) UnsetRegions()`

UnsetRegions ensures that no value is present for Regions, not even an explicit nil
### GetConnection

`func (o *Institution) GetConnection() InstitutionConnectionNullable`

GetConnection returns the Connection field if non-nil, zero value otherwise.

### GetConnectionOk

`func (o *Institution) GetConnectionOk() (*InstitutionConnectionNullable, bool)`

GetConnectionOk returns a tuple with the Connection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnection

`func (o *Institution) SetConnection(v InstitutionConnectionNullable)`

SetConnection sets Connection field to given value.


### SetConnectionNil

`func (o *Institution) SetConnectionNil(b bool)`

 SetConnectionNil sets the value for Connection to be an explicit nil

### UnsetConnection
`func (o *Institution) UnsetConnection()`

UnsetConnection ensures that no value is present for Connection, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


