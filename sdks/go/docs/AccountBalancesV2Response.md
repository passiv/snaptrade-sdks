# AccountBalancesV2Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**CashOrMargin** | **string** | Whether the account is a cash or margin account. Same values as &#x60;cash_or_margin&#x60; on the [get account details](/reference/Account%20Information/AccountInformation_getAccountDetails) endpoint. | 
**NetValue** | [**AccountBalancesV2ResponseNetValue**](AccountBalancesV2ResponseNetValue.md) |  | 
**Cash** | [**[]AccountBalancesV2ResponseCashInner**](AccountBalancesV2ResponseCashInner.md) | Cash held in the account, one entry per currency. Some institutions allow holding multiple currencies in the same account. | 
**BuyingPower** | [**[]AccountBalancesV2ResponseBuyingPowerInner**](AccountBalancesV2ResponseBuyingPowerInner.md) | How much the account can spend on new purchases, one entry per currency. Amounts are in different currencies and shouldn&#39;t be added together. Null when it can&#39;t be determined. - **Cash accounts:** one entry per currency held, never more than the cash in that currency. Each entry is the settled cash available to spend in that currency where the institution reports it; otherwise it&#39;s the institution&#39;s buying power or cash, which may include proceeds from trades that haven&#39;t settled. Check &#x60;basis&#x60;. - **Margin accounts:** a single entry with the institution&#39;s buying power, typically its overnight figure (day-trading buying power isn&#39;t included). How it&#39;s calculated varies by institution, it can be negative, and it may not cover options or other non-marginable securities.  | 
**Margin** | [**NullableAccountBalancesV2ResponseMargin**](AccountBalancesV2ResponseMargin.md) |  | 
**DataFreshness** | [**AccountBalancesV2ResponseDataFreshness**](AccountBalancesV2ResponseDataFreshness.md) |  | 

## Methods

### NewAccountBalancesV2Response

`func NewAccountBalancesV2Response(accountId string, cashOrMargin string, netValue AccountBalancesV2ResponseNetValue, cash []AccountBalancesV2ResponseCashInner, buyingPower []AccountBalancesV2ResponseBuyingPowerInner, margin NullableAccountBalancesV2ResponseMargin, dataFreshness AccountBalancesV2ResponseDataFreshness, ) *AccountBalancesV2Response`

NewAccountBalancesV2Response instantiates a new AccountBalancesV2Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseWithDefaults

`func NewAccountBalancesV2ResponseWithDefaults() *AccountBalancesV2Response`

NewAccountBalancesV2ResponseWithDefaults instantiates a new AccountBalancesV2Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *AccountBalancesV2Response) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *AccountBalancesV2Response) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *AccountBalancesV2Response) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.


### GetCashOrMargin

`func (o *AccountBalancesV2Response) GetCashOrMargin() string`

GetCashOrMargin returns the CashOrMargin field if non-nil, zero value otherwise.

### GetCashOrMarginOk

`func (o *AccountBalancesV2Response) GetCashOrMarginOk() (*string, bool)`

GetCashOrMarginOk returns a tuple with the CashOrMargin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashOrMargin

`func (o *AccountBalancesV2Response) SetCashOrMargin(v string)`

SetCashOrMargin sets CashOrMargin field to given value.


### GetNetValue

`func (o *AccountBalancesV2Response) GetNetValue() AccountBalancesV2ResponseNetValue`

GetNetValue returns the NetValue field if non-nil, zero value otherwise.

### GetNetValueOk

`func (o *AccountBalancesV2Response) GetNetValueOk() (*AccountBalancesV2ResponseNetValue, bool)`

GetNetValueOk returns a tuple with the NetValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetValue

`func (o *AccountBalancesV2Response) SetNetValue(v AccountBalancesV2ResponseNetValue)`

SetNetValue sets NetValue field to given value.


### GetCash

`func (o *AccountBalancesV2Response) GetCash() []AccountBalancesV2ResponseCashInner`

GetCash returns the Cash field if non-nil, zero value otherwise.

### GetCashOk

`func (o *AccountBalancesV2Response) GetCashOk() (*[]AccountBalancesV2ResponseCashInner, bool)`

GetCashOk returns a tuple with the Cash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCash

`func (o *AccountBalancesV2Response) SetCash(v []AccountBalancesV2ResponseCashInner)`

SetCash sets Cash field to given value.


### GetBuyingPower

`func (o *AccountBalancesV2Response) GetBuyingPower() []AccountBalancesV2ResponseBuyingPowerInner`

GetBuyingPower returns the BuyingPower field if non-nil, zero value otherwise.

### GetBuyingPowerOk

`func (o *AccountBalancesV2Response) GetBuyingPowerOk() (*[]AccountBalancesV2ResponseBuyingPowerInner, bool)`

GetBuyingPowerOk returns a tuple with the BuyingPower field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyingPower

`func (o *AccountBalancesV2Response) SetBuyingPower(v []AccountBalancesV2ResponseBuyingPowerInner)`

SetBuyingPower sets BuyingPower field to given value.


### SetBuyingPowerNil

`func (o *AccountBalancesV2Response) SetBuyingPowerNil(b bool)`

 SetBuyingPowerNil sets the value for BuyingPower to be an explicit nil

### UnsetBuyingPower
`func (o *AccountBalancesV2Response) UnsetBuyingPower()`

UnsetBuyingPower ensures that no value is present for BuyingPower, not even an explicit nil
### GetMargin

`func (o *AccountBalancesV2Response) GetMargin() AccountBalancesV2ResponseMargin`

GetMargin returns the Margin field if non-nil, zero value otherwise.

### GetMarginOk

`func (o *AccountBalancesV2Response) GetMarginOk() (*AccountBalancesV2ResponseMargin, bool)`

GetMarginOk returns a tuple with the Margin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMargin

`func (o *AccountBalancesV2Response) SetMargin(v AccountBalancesV2ResponseMargin)`

SetMargin sets Margin field to given value.


### SetMarginNil

`func (o *AccountBalancesV2Response) SetMarginNil(b bool)`

 SetMarginNil sets the value for Margin to be an explicit nil

### UnsetMargin
`func (o *AccountBalancesV2Response) UnsetMargin()`

UnsetMargin ensures that no value is present for Margin, not even an explicit nil
### GetDataFreshness

`func (o *AccountBalancesV2Response) GetDataFreshness() AccountBalancesV2ResponseDataFreshness`

GetDataFreshness returns the DataFreshness field if non-nil, zero value otherwise.

### GetDataFreshnessOk

`func (o *AccountBalancesV2Response) GetDataFreshnessOk() (*AccountBalancesV2ResponseDataFreshness, bool)`

GetDataFreshnessOk returns a tuple with the DataFreshness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataFreshness

`func (o *AccountBalancesV2Response) SetDataFreshness(v AccountBalancesV2ResponseDataFreshness)`

SetDataFreshness sets DataFreshness field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


