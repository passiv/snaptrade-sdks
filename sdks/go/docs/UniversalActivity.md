# UniversalActivity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Account** | Pointer to [**AccountSimple**](AccountSimple.md) |  | [optional] 
**Amount** | Pointer to **NullableFloat32** |  | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Fee** | Pointer to **float32** |  | [optional] 
**FxRate** | Pointer to **NullableFloat32** | The forex conversion rate involved in the transaction if provided by the brokerage. Used in cases where securities of one currency are purchased in a different currency, and the forex conversion is automatic. In those cases, price, amount and fee will be in the top level currency (activity -&gt; currency) | [optional] 
**Institution** | Pointer to **string** |  | [optional] 
**OptionType** | Pointer to **string** | If an option transaction, then it&#39;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string | [optional] 
**Price** | Pointer to **float32** |  | [optional] 
**SettlementDate** | Pointer to **string** |  | [optional] 
**ExternalReferenceId** | Pointer to **NullableString** | Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same external_reference_id | [optional] 
**Symbol** | Pointer to [**Symbol**](Symbol.md) |  | [optional] 
**OptionSymbol** | Pointer to [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**TradeDate** | Pointer to **NullableString** |  | [optional] 
**Type** | Pointer to **string** | Potential values include (but are not limited to) - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT | [optional] 
**Units** | Pointer to **float32** | Usually but not necessarily an integer | [optional] 

## Methods

### NewUniversalActivity

`func NewUniversalActivity() *UniversalActivity`

NewUniversalActivity instantiates a new UniversalActivity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniversalActivityWithDefaults

`func NewUniversalActivityWithDefaults() *UniversalActivity`

NewUniversalActivityWithDefaults instantiates a new UniversalActivity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *UniversalActivity) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniversalActivity) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniversalActivity) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniversalActivity) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAccount

`func (o *UniversalActivity) GetAccount() AccountSimple`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *UniversalActivity) GetAccountOk() (*AccountSimple, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *UniversalActivity) SetAccount(v AccountSimple)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *UniversalActivity) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetAmount

`func (o *UniversalActivity) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *UniversalActivity) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *UniversalActivity) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *UniversalActivity) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *UniversalActivity) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *UniversalActivity) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetCurrency

`func (o *UniversalActivity) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UniversalActivity) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UniversalActivity) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UniversalActivity) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetDescription

`func (o *UniversalActivity) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UniversalActivity) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UniversalActivity) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UniversalActivity) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetFee

`func (o *UniversalActivity) GetFee() float32`

GetFee returns the Fee field if non-nil, zero value otherwise.

### GetFeeOk

`func (o *UniversalActivity) GetFeeOk() (*float32, bool)`

GetFeeOk returns a tuple with the Fee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFee

`func (o *UniversalActivity) SetFee(v float32)`

SetFee sets Fee field to given value.

### HasFee

`func (o *UniversalActivity) HasFee() bool`

HasFee returns a boolean if a field has been set.

### GetFxRate

`func (o *UniversalActivity) GetFxRate() float32`

GetFxRate returns the FxRate field if non-nil, zero value otherwise.

### GetFxRateOk

`func (o *UniversalActivity) GetFxRateOk() (*float32, bool)`

GetFxRateOk returns a tuple with the FxRate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFxRate

`func (o *UniversalActivity) SetFxRate(v float32)`

SetFxRate sets FxRate field to given value.

### HasFxRate

`func (o *UniversalActivity) HasFxRate() bool`

HasFxRate returns a boolean if a field has been set.

### SetFxRateNil

`func (o *UniversalActivity) SetFxRateNil(b bool)`

 SetFxRateNil sets the value for FxRate to be an explicit nil

### UnsetFxRate
`func (o *UniversalActivity) UnsetFxRate()`

UnsetFxRate ensures that no value is present for FxRate, not even an explicit nil
### GetInstitution

`func (o *UniversalActivity) GetInstitution() string`

GetInstitution returns the Institution field if non-nil, zero value otherwise.

### GetInstitutionOk

`func (o *UniversalActivity) GetInstitutionOk() (*string, bool)`

GetInstitutionOk returns a tuple with the Institution field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitution

`func (o *UniversalActivity) SetInstitution(v string)`

SetInstitution sets Institution field to given value.

### HasInstitution

`func (o *UniversalActivity) HasInstitution() bool`

HasInstitution returns a boolean if a field has been set.

### GetOptionType

`func (o *UniversalActivity) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *UniversalActivity) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *UniversalActivity) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.

### HasOptionType

`func (o *UniversalActivity) HasOptionType() bool`

HasOptionType returns a boolean if a field has been set.

### GetPrice

`func (o *UniversalActivity) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *UniversalActivity) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *UniversalActivity) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *UniversalActivity) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSettlementDate

`func (o *UniversalActivity) GetSettlementDate() string`

GetSettlementDate returns the SettlementDate field if non-nil, zero value otherwise.

### GetSettlementDateOk

`func (o *UniversalActivity) GetSettlementDateOk() (*string, bool)`

GetSettlementDateOk returns a tuple with the SettlementDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettlementDate

`func (o *UniversalActivity) SetSettlementDate(v string)`

SetSettlementDate sets SettlementDate field to given value.

### HasSettlementDate

`func (o *UniversalActivity) HasSettlementDate() bool`

HasSettlementDate returns a boolean if a field has been set.

### GetExternalReferenceId

`func (o *UniversalActivity) GetExternalReferenceId() string`

GetExternalReferenceId returns the ExternalReferenceId field if non-nil, zero value otherwise.

### GetExternalReferenceIdOk

`func (o *UniversalActivity) GetExternalReferenceIdOk() (*string, bool)`

GetExternalReferenceIdOk returns a tuple with the ExternalReferenceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalReferenceId

`func (o *UniversalActivity) SetExternalReferenceId(v string)`

SetExternalReferenceId sets ExternalReferenceId field to given value.

### HasExternalReferenceId

`func (o *UniversalActivity) HasExternalReferenceId() bool`

HasExternalReferenceId returns a boolean if a field has been set.

### SetExternalReferenceIdNil

`func (o *UniversalActivity) SetExternalReferenceIdNil(b bool)`

 SetExternalReferenceIdNil sets the value for ExternalReferenceId to be an explicit nil

### UnsetExternalReferenceId
`func (o *UniversalActivity) UnsetExternalReferenceId()`

UnsetExternalReferenceId ensures that no value is present for ExternalReferenceId, not even an explicit nil
### GetSymbol

`func (o *UniversalActivity) GetSymbol() Symbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UniversalActivity) GetSymbolOk() (*Symbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UniversalActivity) SetSymbol(v Symbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *UniversalActivity) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetOptionSymbol

`func (o *UniversalActivity) GetOptionSymbol() OptionsSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *UniversalActivity) GetOptionSymbolOk() (*OptionsSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *UniversalActivity) SetOptionSymbol(v OptionsSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *UniversalActivity) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### GetTradeDate

`func (o *UniversalActivity) GetTradeDate() string`

GetTradeDate returns the TradeDate field if non-nil, zero value otherwise.

### GetTradeDateOk

`func (o *UniversalActivity) GetTradeDateOk() (*string, bool)`

GetTradeDateOk returns a tuple with the TradeDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeDate

`func (o *UniversalActivity) SetTradeDate(v string)`

SetTradeDate sets TradeDate field to given value.

### HasTradeDate

`func (o *UniversalActivity) HasTradeDate() bool`

HasTradeDate returns a boolean if a field has been set.

### SetTradeDateNil

`func (o *UniversalActivity) SetTradeDateNil(b bool)`

 SetTradeDateNil sets the value for TradeDate to be an explicit nil

### UnsetTradeDate
`func (o *UniversalActivity) UnsetTradeDate()`

UnsetTradeDate ensures that no value is present for TradeDate, not even an explicit nil
### GetType

`func (o *UniversalActivity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UniversalActivity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UniversalActivity) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *UniversalActivity) HasType() bool`

HasType returns a boolean if a field has been set.

### GetUnits

`func (o *UniversalActivity) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *UniversalActivity) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *UniversalActivity) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *UniversalActivity) HasUnits() bool`

HasUnits returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


