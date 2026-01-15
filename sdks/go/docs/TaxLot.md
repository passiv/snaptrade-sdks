# TaxLot

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OriginalPurchaseDate** | Pointer to **NullableTime** | The date and time of the purchase. | [optional] 
**Quantity** | Pointer to **NullableString** | The number of shares in the tax lot. This can be fractional or integer units. | [optional] 
**PurchasedPrice** | Pointer to **NullableString** | The purchase price per share for the tax lot. | [optional] 
**CostBasis** | Pointer to **NullableString** | The cost basis of the entire lot. | [optional] 
**CurrentValue** | Pointer to **NullableString** | The current market value of the entire lot. | [optional] 
**PositionType** | Pointer to **NullableString** | The type of position for the tax lot (e.g., LONG, SHORT). | [optional] 

## Methods

### NewTaxLot

`func NewTaxLot() *TaxLot`

NewTaxLot instantiates a new TaxLot object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTaxLotWithDefaults

`func NewTaxLotWithDefaults() *TaxLot`

NewTaxLotWithDefaults instantiates a new TaxLot object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOriginalPurchaseDate

`func (o *TaxLot) GetOriginalPurchaseDate() time.Time`

GetOriginalPurchaseDate returns the OriginalPurchaseDate field if non-nil, zero value otherwise.

### GetOriginalPurchaseDateOk

`func (o *TaxLot) GetOriginalPurchaseDateOk() (*time.Time, bool)`

GetOriginalPurchaseDateOk returns a tuple with the OriginalPurchaseDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalPurchaseDate

`func (o *TaxLot) SetOriginalPurchaseDate(v time.Time)`

SetOriginalPurchaseDate sets OriginalPurchaseDate field to given value.

### HasOriginalPurchaseDate

`func (o *TaxLot) HasOriginalPurchaseDate() bool`

HasOriginalPurchaseDate returns a boolean if a field has been set.

### SetOriginalPurchaseDateNil

`func (o *TaxLot) SetOriginalPurchaseDateNil(b bool)`

 SetOriginalPurchaseDateNil sets the value for OriginalPurchaseDate to be an explicit nil

### UnsetOriginalPurchaseDate
`func (o *TaxLot) UnsetOriginalPurchaseDate()`

UnsetOriginalPurchaseDate ensures that no value is present for OriginalPurchaseDate, not even an explicit nil
### GetQuantity

`func (o *TaxLot) GetQuantity() string`

GetQuantity returns the Quantity field if non-nil, zero value otherwise.

### GetQuantityOk

`func (o *TaxLot) GetQuantityOk() (*string, bool)`

GetQuantityOk returns a tuple with the Quantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuantity

`func (o *TaxLot) SetQuantity(v string)`

SetQuantity sets Quantity field to given value.

### HasQuantity

`func (o *TaxLot) HasQuantity() bool`

HasQuantity returns a boolean if a field has been set.

### SetQuantityNil

`func (o *TaxLot) SetQuantityNil(b bool)`

 SetQuantityNil sets the value for Quantity to be an explicit nil

### UnsetQuantity
`func (o *TaxLot) UnsetQuantity()`

UnsetQuantity ensures that no value is present for Quantity, not even an explicit nil
### GetPurchasedPrice

`func (o *TaxLot) GetPurchasedPrice() string`

GetPurchasedPrice returns the PurchasedPrice field if non-nil, zero value otherwise.

### GetPurchasedPriceOk

`func (o *TaxLot) GetPurchasedPriceOk() (*string, bool)`

GetPurchasedPriceOk returns a tuple with the PurchasedPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurchasedPrice

`func (o *TaxLot) SetPurchasedPrice(v string)`

SetPurchasedPrice sets PurchasedPrice field to given value.

### HasPurchasedPrice

`func (o *TaxLot) HasPurchasedPrice() bool`

HasPurchasedPrice returns a boolean if a field has been set.

### SetPurchasedPriceNil

`func (o *TaxLot) SetPurchasedPriceNil(b bool)`

 SetPurchasedPriceNil sets the value for PurchasedPrice to be an explicit nil

### UnsetPurchasedPrice
`func (o *TaxLot) UnsetPurchasedPrice()`

UnsetPurchasedPrice ensures that no value is present for PurchasedPrice, not even an explicit nil
### GetCostBasis

`func (o *TaxLot) GetCostBasis() string`

GetCostBasis returns the CostBasis field if non-nil, zero value otherwise.

### GetCostBasisOk

`func (o *TaxLot) GetCostBasisOk() (*string, bool)`

GetCostBasisOk returns a tuple with the CostBasis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostBasis

`func (o *TaxLot) SetCostBasis(v string)`

SetCostBasis sets CostBasis field to given value.

### HasCostBasis

`func (o *TaxLot) HasCostBasis() bool`

HasCostBasis returns a boolean if a field has been set.

### SetCostBasisNil

`func (o *TaxLot) SetCostBasisNil(b bool)`

 SetCostBasisNil sets the value for CostBasis to be an explicit nil

### UnsetCostBasis
`func (o *TaxLot) UnsetCostBasis()`

UnsetCostBasis ensures that no value is present for CostBasis, not even an explicit nil
### GetCurrentValue

`func (o *TaxLot) GetCurrentValue() string`

GetCurrentValue returns the CurrentValue field if non-nil, zero value otherwise.

### GetCurrentValueOk

`func (o *TaxLot) GetCurrentValueOk() (*string, bool)`

GetCurrentValueOk returns a tuple with the CurrentValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrentValue

`func (o *TaxLot) SetCurrentValue(v string)`

SetCurrentValue sets CurrentValue field to given value.

### HasCurrentValue

`func (o *TaxLot) HasCurrentValue() bool`

HasCurrentValue returns a boolean if a field has been set.

### SetCurrentValueNil

`func (o *TaxLot) SetCurrentValueNil(b bool)`

 SetCurrentValueNil sets the value for CurrentValue to be an explicit nil

### UnsetCurrentValue
`func (o *TaxLot) UnsetCurrentValue()`

UnsetCurrentValue ensures that no value is present for CurrentValue, not even an explicit nil
### GetPositionType

`func (o *TaxLot) GetPositionType() string`

GetPositionType returns the PositionType field if non-nil, zero value otherwise.

### GetPositionTypeOk

`func (o *TaxLot) GetPositionTypeOk() (*string, bool)`

GetPositionTypeOk returns a tuple with the PositionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPositionType

`func (o *TaxLot) SetPositionType(v string)`

SetPositionType sets PositionType field to given value.

### HasPositionType

`func (o *TaxLot) HasPositionType() bool`

HasPositionType returns a boolean if a field has been set.

### SetPositionTypeNil

`func (o *TaxLot) SetPositionTypeNil(b bool)`

 SetPositionTypeNil sets the value for PositionType to be an explicit nil

### UnsetPositionType
`func (o *TaxLot) UnsetPositionType()`

UnsetPositionType ensures that no value is present for PositionType, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


