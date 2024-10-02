# UniversalActivity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the transaction. This is the ID used to reference the transaction in SnapTrade.  Please note that this ID _can_ change if the transaction is deleted and re-added. Under normal circumstances, SnapTrade does not delete transactions. The only time this would happen is if SnapTrade re-fetches and reprocesses the data from the brokerage, which is rare. If you require a stable ID, please let us know and we can work with you to provide one.  | [optional] 
**Account** | Pointer to [**AccountSimple**](AccountSimple.md) |  | [optional] 
**Symbol** | Pointer to [**NullableUniversalActivitySymbol**](UniversalActivitySymbol.md) |  | [optional] 
**OptionSymbol** | Pointer to [**NullableUniversalActivityOptionSymbol**](UniversalActivityOptionSymbol.md) |  | [optional] 
**Price** | Pointer to **float32** | The price of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. | [optional] 
**Units** | Pointer to **float32** | The number of units of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. | [optional] 
**Amount** | Pointer to **NullableFloat32** | The amount of the transaction denominated in &#x60;currency&#x60;. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount. | [optional] 
**Currency** | Pointer to [**UniversalActivityCurrency**](UniversalActivityCurrency.md) |  | [optional] 
**Type** | Pointer to **string** | A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.  | [optional] 
**OptionType** | Pointer to **string** | If an option &#x60;BUY&#x60; or &#x60;SELL&#x60; transaction, this further specifies the type of action. The possible values are: - BUY_TO_OPEN - BUY_TO_CLOSE - SELL_TO_OPEN - SELL_TO_CLOSE  | [optional] 
**Description** | Pointer to **string** | A human-readable description of the transaction. This is usually the brokerage&#39;s description of the transaction. | [optional] 
**TradeDate** | Pointer to **NullableTime** | The recorded time for the transaction. The granularity of this timestamp depends on the brokerage. Some brokerages provide the exact time of the transaction, while others provide only the date. Please check the [integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;6fab8012ade6441fa0c6d9af9c55ce3a) for the specific brokerage to see the granularity of the timestamps. Note that even though the field is named &#x60;trade_date&#x60;, it can represent any type of transaction, not just trades. | [optional] 
**SettlementDate** | Pointer to **time.Time** | The date on which the transaction is settled. | [optional] 
**Fee** | Pointer to **float32** | Any fee associated with the transaction if provided by the brokerage. | [optional] 
**FxRate** | Pointer to **NullableFloat32** | The forex conversion rate involved in the transaction if provided by the brokerage. Used in cases where securities of one currency are purchased in a different currency, and the forex conversion is automatic. In those cases, price, amount and fee will be in the top level currency (activity -&gt; currency) | [optional] 
**Institution** | Pointer to **string** | The institution that the transaction is associated with. This is usually the brokerage name. | [optional] 
**ExternalReferenceId** | Pointer to **NullableString** | Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same &#x60;external_reference_id&#x60; | [optional] 

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

### GetSymbol

`func (o *UniversalActivity) GetSymbol() UniversalActivitySymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UniversalActivity) GetSymbolOk() (*UniversalActivitySymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UniversalActivity) SetSymbol(v UniversalActivitySymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *UniversalActivity) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *UniversalActivity) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *UniversalActivity) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetOptionSymbol

`func (o *UniversalActivity) GetOptionSymbol() UniversalActivityOptionSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *UniversalActivity) GetOptionSymbolOk() (*UniversalActivityOptionSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *UniversalActivity) SetOptionSymbol(v UniversalActivityOptionSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *UniversalActivity) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### SetOptionSymbolNil

`func (o *UniversalActivity) SetOptionSymbolNil(b bool)`

 SetOptionSymbolNil sets the value for OptionSymbol to be an explicit nil

### UnsetOptionSymbol
`func (o *UniversalActivity) UnsetOptionSymbol()`

UnsetOptionSymbol ensures that no value is present for OptionSymbol, not even an explicit nil
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

`func (o *UniversalActivity) GetCurrency() UniversalActivityCurrency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UniversalActivity) GetCurrencyOk() (*UniversalActivityCurrency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UniversalActivity) SetCurrency(v UniversalActivityCurrency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UniversalActivity) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

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

### GetTradeDate

`func (o *UniversalActivity) GetTradeDate() time.Time`

GetTradeDate returns the TradeDate field if non-nil, zero value otherwise.

### GetTradeDateOk

`func (o *UniversalActivity) GetTradeDateOk() (*time.Time, bool)`

GetTradeDateOk returns a tuple with the TradeDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeDate

`func (o *UniversalActivity) SetTradeDate(v time.Time)`

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
### GetSettlementDate

`func (o *UniversalActivity) GetSettlementDate() time.Time`

GetSettlementDate returns the SettlementDate field if non-nil, zero value otherwise.

### GetSettlementDateOk

`func (o *UniversalActivity) GetSettlementDateOk() (*time.Time, bool)`

GetSettlementDateOk returns a tuple with the SettlementDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettlementDate

`func (o *UniversalActivity) SetSettlementDate(v time.Time)`

SetSettlementDate sets SettlementDate field to given value.

### HasSettlementDate

`func (o *UniversalActivity) HasSettlementDate() bool`

HasSettlementDate returns a boolean if a field has been set.

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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


