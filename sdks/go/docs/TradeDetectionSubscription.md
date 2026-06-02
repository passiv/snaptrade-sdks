# TradeDetectionSubscription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**Cost** | **string** | Monthly subscription cost as a decimal string. | 
**CheckIntervalSeconds** | **int32** | How often the subscribed account is checked for new trades. | 

## Methods

### NewTradeDetectionSubscription

`func NewTradeDetectionSubscription(accountId string, cost string, checkIntervalSeconds int32, ) *TradeDetectionSubscription`

NewTradeDetectionSubscription instantiates a new TradeDetectionSubscription object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeDetectionSubscriptionWithDefaults

`func NewTradeDetectionSubscriptionWithDefaults() *TradeDetectionSubscription`

NewTradeDetectionSubscriptionWithDefaults instantiates a new TradeDetectionSubscription object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *TradeDetectionSubscription) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *TradeDetectionSubscription) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *TradeDetectionSubscription) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.


### GetCost

`func (o *TradeDetectionSubscription) GetCost() string`

GetCost returns the Cost field if non-nil, zero value otherwise.

### GetCostOk

`func (o *TradeDetectionSubscription) GetCostOk() (*string, bool)`

GetCostOk returns a tuple with the Cost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCost

`func (o *TradeDetectionSubscription) SetCost(v string)`

SetCost sets Cost field to given value.


### GetCheckIntervalSeconds

`func (o *TradeDetectionSubscription) GetCheckIntervalSeconds() int32`

GetCheckIntervalSeconds returns the CheckIntervalSeconds field if non-nil, zero value otherwise.

### GetCheckIntervalSecondsOk

`func (o *TradeDetectionSubscription) GetCheckIntervalSecondsOk() (*int32, bool)`

GetCheckIntervalSecondsOk returns a tuple with the CheckIntervalSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheckIntervalSeconds

`func (o *TradeDetectionSubscription) SetCheckIntervalSeconds(v int32)`

SetCheckIntervalSeconds sets CheckIntervalSeconds field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


