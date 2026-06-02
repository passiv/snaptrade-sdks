# TradeDetectionAddSubscriptionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 

## Methods

### NewTradeDetectionAddSubscriptionRequest

`func NewTradeDetectionAddSubscriptionRequest(accountId string, ) *TradeDetectionAddSubscriptionRequest`

NewTradeDetectionAddSubscriptionRequest instantiates a new TradeDetectionAddSubscriptionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeDetectionAddSubscriptionRequestWithDefaults

`func NewTradeDetectionAddSubscriptionRequestWithDefaults() *TradeDetectionAddSubscriptionRequest`

NewTradeDetectionAddSubscriptionRequestWithDefaults instantiates a new TradeDetectionAddSubscriptionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *TradeDetectionAddSubscriptionRequest) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *TradeDetectionAddSubscriptionRequest) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *TradeDetectionAddSubscriptionRequest) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


