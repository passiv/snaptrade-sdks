# PortfolioGroupInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbols** | Pointer to [**[]UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**QuotableSymbols** | Pointer to [**[]UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Balances** | Pointer to [**[]Balance**](Balance.md) |  | [optional] 
**Positions** | Pointer to [**[]Position**](Position.md) |  | [optional] 
**TargetPositions** | Pointer to [**[]TargetAsset**](TargetAsset.md) |  | [optional] 
**IdealPositions** | Pointer to [**[]Position**](Position.md) |  | [optional] 
**ExcludedPositions** | Pointer to [**[]ExcludedAsset**](ExcludedAsset.md) |  | [optional] 
**CalculatedTrades** | Pointer to [**[]CalculatedTrade**](CalculatedTrade.md) |  | [optional] 
**BrokerageAuthorizations** | Pointer to [**[]BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] 
**Accuracy** | Pointer to **float32** |  | [optional] 
**Settings** | Pointer to [**PortfolioGroupSettings**](PortfolioGroupSettings.md) |  | [optional] 

## Methods

### NewPortfolioGroupInfo

`func NewPortfolioGroupInfo() *PortfolioGroupInfo`

NewPortfolioGroupInfo instantiates a new PortfolioGroupInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPortfolioGroupInfoWithDefaults

`func NewPortfolioGroupInfoWithDefaults() *PortfolioGroupInfo`

NewPortfolioGroupInfoWithDefaults instantiates a new PortfolioGroupInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbols

`func (o *PortfolioGroupInfo) GetSymbols() []UniversalSymbol`

GetSymbols returns the Symbols field if non-nil, zero value otherwise.

### GetSymbolsOk

`func (o *PortfolioGroupInfo) GetSymbolsOk() (*[]UniversalSymbol, bool)`

GetSymbolsOk returns a tuple with the Symbols field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbols

`func (o *PortfolioGroupInfo) SetSymbols(v []UniversalSymbol)`

SetSymbols sets Symbols field to given value.

### HasSymbols

`func (o *PortfolioGroupInfo) HasSymbols() bool`

HasSymbols returns a boolean if a field has been set.

### GetQuotableSymbols

`func (o *PortfolioGroupInfo) GetQuotableSymbols() []UniversalSymbol`

GetQuotableSymbols returns the QuotableSymbols field if non-nil, zero value otherwise.

### GetQuotableSymbolsOk

`func (o *PortfolioGroupInfo) GetQuotableSymbolsOk() (*[]UniversalSymbol, bool)`

GetQuotableSymbolsOk returns a tuple with the QuotableSymbols field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuotableSymbols

`func (o *PortfolioGroupInfo) SetQuotableSymbols(v []UniversalSymbol)`

SetQuotableSymbols sets QuotableSymbols field to given value.

### HasQuotableSymbols

`func (o *PortfolioGroupInfo) HasQuotableSymbols() bool`

HasQuotableSymbols returns a boolean if a field has been set.

### GetBalances

`func (o *PortfolioGroupInfo) GetBalances() []Balance`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *PortfolioGroupInfo) GetBalancesOk() (*[]Balance, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *PortfolioGroupInfo) SetBalances(v []Balance)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *PortfolioGroupInfo) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### GetPositions

`func (o *PortfolioGroupInfo) GetPositions() []Position`

GetPositions returns the Positions field if non-nil, zero value otherwise.

### GetPositionsOk

`func (o *PortfolioGroupInfo) GetPositionsOk() (*[]Position, bool)`

GetPositionsOk returns a tuple with the Positions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPositions

`func (o *PortfolioGroupInfo) SetPositions(v []Position)`

SetPositions sets Positions field to given value.

### HasPositions

`func (o *PortfolioGroupInfo) HasPositions() bool`

HasPositions returns a boolean if a field has been set.

### GetTargetPositions

`func (o *PortfolioGroupInfo) GetTargetPositions() []TargetAsset`

GetTargetPositions returns the TargetPositions field if non-nil, zero value otherwise.

### GetTargetPositionsOk

`func (o *PortfolioGroupInfo) GetTargetPositionsOk() (*[]TargetAsset, bool)`

GetTargetPositionsOk returns a tuple with the TargetPositions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetPositions

`func (o *PortfolioGroupInfo) SetTargetPositions(v []TargetAsset)`

SetTargetPositions sets TargetPositions field to given value.

### HasTargetPositions

`func (o *PortfolioGroupInfo) HasTargetPositions() bool`

HasTargetPositions returns a boolean if a field has been set.

### GetIdealPositions

`func (o *PortfolioGroupInfo) GetIdealPositions() []Position`

GetIdealPositions returns the IdealPositions field if non-nil, zero value otherwise.

### GetIdealPositionsOk

`func (o *PortfolioGroupInfo) GetIdealPositionsOk() (*[]Position, bool)`

GetIdealPositionsOk returns a tuple with the IdealPositions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdealPositions

`func (o *PortfolioGroupInfo) SetIdealPositions(v []Position)`

SetIdealPositions sets IdealPositions field to given value.

### HasIdealPositions

`func (o *PortfolioGroupInfo) HasIdealPositions() bool`

HasIdealPositions returns a boolean if a field has been set.

### GetExcludedPositions

`func (o *PortfolioGroupInfo) GetExcludedPositions() []ExcludedAsset`

GetExcludedPositions returns the ExcludedPositions field if non-nil, zero value otherwise.

### GetExcludedPositionsOk

`func (o *PortfolioGroupInfo) GetExcludedPositionsOk() (*[]ExcludedAsset, bool)`

GetExcludedPositionsOk returns a tuple with the ExcludedPositions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExcludedPositions

`func (o *PortfolioGroupInfo) SetExcludedPositions(v []ExcludedAsset)`

SetExcludedPositions sets ExcludedPositions field to given value.

### HasExcludedPositions

`func (o *PortfolioGroupInfo) HasExcludedPositions() bool`

HasExcludedPositions returns a boolean if a field has been set.

### GetCalculatedTrades

`func (o *PortfolioGroupInfo) GetCalculatedTrades() []CalculatedTrade`

GetCalculatedTrades returns the CalculatedTrades field if non-nil, zero value otherwise.

### GetCalculatedTradesOk

`func (o *PortfolioGroupInfo) GetCalculatedTradesOk() (*[]CalculatedTrade, bool)`

GetCalculatedTradesOk returns a tuple with the CalculatedTrades field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCalculatedTrades

`func (o *PortfolioGroupInfo) SetCalculatedTrades(v []CalculatedTrade)`

SetCalculatedTrades sets CalculatedTrades field to given value.

### HasCalculatedTrades

`func (o *PortfolioGroupInfo) HasCalculatedTrades() bool`

HasCalculatedTrades returns a boolean if a field has been set.

### GetBrokerageAuthorizations

`func (o *PortfolioGroupInfo) GetBrokerageAuthorizations() []BrokerageAuthorization`

GetBrokerageAuthorizations returns the BrokerageAuthorizations field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationsOk

`func (o *PortfolioGroupInfo) GetBrokerageAuthorizationsOk() (*[]BrokerageAuthorization, bool)`

GetBrokerageAuthorizationsOk returns a tuple with the BrokerageAuthorizations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorizations

`func (o *PortfolioGroupInfo) SetBrokerageAuthorizations(v []BrokerageAuthorization)`

SetBrokerageAuthorizations sets BrokerageAuthorizations field to given value.

### HasBrokerageAuthorizations

`func (o *PortfolioGroupInfo) HasBrokerageAuthorizations() bool`

HasBrokerageAuthorizations returns a boolean if a field has been set.

### GetAccuracy

`func (o *PortfolioGroupInfo) GetAccuracy() float32`

GetAccuracy returns the Accuracy field if non-nil, zero value otherwise.

### GetAccuracyOk

`func (o *PortfolioGroupInfo) GetAccuracyOk() (*float32, bool)`

GetAccuracyOk returns a tuple with the Accuracy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccuracy

`func (o *PortfolioGroupInfo) SetAccuracy(v float32)`

SetAccuracy sets Accuracy field to given value.

### HasAccuracy

`func (o *PortfolioGroupInfo) HasAccuracy() bool`

HasAccuracy returns a boolean if a field has been set.

### GetSettings

`func (o *PortfolioGroupInfo) GetSettings() PortfolioGroupSettings`

GetSettings returns the Settings field if non-nil, zero value otherwise.

### GetSettingsOk

`func (o *PortfolioGroupInfo) GetSettingsOk() (*PortfolioGroupSettings, bool)`

GetSettingsOk returns a tuple with the Settings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettings

`func (o *PortfolioGroupInfo) SetSettings(v PortfolioGroupSettings)`

SetSettings sets Settings field to given value.

### HasSettings

`func (o *PortfolioGroupInfo) HasSettings() bool`

HasSettings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


