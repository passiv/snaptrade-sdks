# ManualTradeBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | Pointer to [**AccountSimple**](AccountSimple.md) |  | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**Cash** | Pointer to **NullableFloat32** | Estimated amount of cash remaining in the account after the trade. At the moment this is the same as &#x60;remaining_cash&#x60; under &#x60;trade_impacts&#x60;. | [optional] 

## Methods

### NewManualTradeBalance

`func NewManualTradeBalance() *ManualTradeBalance`

NewManualTradeBalance instantiates a new ManualTradeBalance object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeBalanceWithDefaults

`func NewManualTradeBalanceWithDefaults() *ManualTradeBalance`

NewManualTradeBalanceWithDefaults instantiates a new ManualTradeBalance object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccount

`func (o *ManualTradeBalance) GetAccount() AccountSimple`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *ManualTradeBalance) GetAccountOk() (*AccountSimple, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *ManualTradeBalance) SetAccount(v AccountSimple)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *ManualTradeBalance) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetCurrency

`func (o *ManualTradeBalance) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *ManualTradeBalance) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *ManualTradeBalance) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *ManualTradeBalance) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetCash

`func (o *ManualTradeBalance) GetCash() float32`

GetCash returns the Cash field if non-nil, zero value otherwise.

### GetCashOk

`func (o *ManualTradeBalance) GetCashOk() (*float32, bool)`

GetCashOk returns a tuple with the Cash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCash

`func (o *ManualTradeBalance) SetCash(v float32)`

SetCash sets Cash field to given value.

### HasCash

`func (o *ManualTradeBalance) HasCash() bool`

HasCash returns a boolean if a field has been set.

### SetCashNil

`func (o *ManualTradeBalance) SetCashNil(b bool)`

 SetCashNil sets the value for Cash to be an explicit nil

### UnsetCash
`func (o *ManualTradeBalance) UnsetCash()`

UnsetCash ensures that no value is present for Cash, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


