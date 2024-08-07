# ModelPortfolio

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**ModelType** | Pointer to **int32** | Enum definitions -&gt; [-1: Unassigned, 0: Security Model Portfolio, 1: Asset Class Portfolio] | [optional] [default to -1]

## Methods

### NewModelPortfolio

`func NewModelPortfolio() *ModelPortfolio`

NewModelPortfolio instantiates a new ModelPortfolio object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewModelPortfolioWithDefaults

`func NewModelPortfolioWithDefaults() *ModelPortfolio`

NewModelPortfolioWithDefaults instantiates a new ModelPortfolio object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ModelPortfolio) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ModelPortfolio) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ModelPortfolio) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ModelPortfolio) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *ModelPortfolio) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ModelPortfolio) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ModelPortfolio) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ModelPortfolio) HasName() bool`

HasName returns a boolean if a field has been set.

### GetModelType

`func (o *ModelPortfolio) GetModelType() int32`

GetModelType returns the ModelType field if non-nil, zero value otherwise.

### GetModelTypeOk

`func (o *ModelPortfolio) GetModelTypeOk() (*int32, bool)`

GetModelTypeOk returns a tuple with the ModelType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelType

`func (o *ModelPortfolio) SetModelType(v int32)`

SetModelType sets ModelType field to given value.

### HasModelType

`func (o *ModelPortfolio) HasModelType() bool`

HasModelType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


