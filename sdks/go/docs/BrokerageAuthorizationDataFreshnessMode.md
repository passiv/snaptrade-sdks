# BrokerageAuthorizationDataFreshnessMode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Institution** | **string** | Indicates the freshness of the data provided by the institution. &#x60;realtime&#x60; means the institution provides current data; &#x60;delayed&#x60; means the institution itself does not allow intra-day data updates.  | 
**Snaptrade** | **string** | Indicates how SnapTrade retrieves data for this connection. &#x60;realtime&#x60; means SnapTrade retrieves current data from the institution during API calls. &#x60;delayed&#x60; means SnapTrade serves cached data, either because the customer&#39;s plan uses Daily data or because retrieving live data from the institution is too latency-intensive.  When this value is &#x60;delayed&#x60;, you can request updated data using the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  | 

## Methods

### NewBrokerageAuthorizationDataFreshnessMode

`func NewBrokerageAuthorizationDataFreshnessMode(institution string, snaptrade string, ) *BrokerageAuthorizationDataFreshnessMode`

NewBrokerageAuthorizationDataFreshnessMode instantiates a new BrokerageAuthorizationDataFreshnessMode object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageAuthorizationDataFreshnessModeWithDefaults

`func NewBrokerageAuthorizationDataFreshnessModeWithDefaults() *BrokerageAuthorizationDataFreshnessMode`

NewBrokerageAuthorizationDataFreshnessModeWithDefaults instantiates a new BrokerageAuthorizationDataFreshnessMode object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstitution

`func (o *BrokerageAuthorizationDataFreshnessMode) GetInstitution() string`

GetInstitution returns the Institution field if non-nil, zero value otherwise.

### GetInstitutionOk

`func (o *BrokerageAuthorizationDataFreshnessMode) GetInstitutionOk() (*string, bool)`

GetInstitutionOk returns a tuple with the Institution field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitution

`func (o *BrokerageAuthorizationDataFreshnessMode) SetInstitution(v string)`

SetInstitution sets Institution field to given value.


### GetSnaptrade

`func (o *BrokerageAuthorizationDataFreshnessMode) GetSnaptrade() string`

GetSnaptrade returns the Snaptrade field if non-nil, zero value otherwise.

### GetSnaptradeOk

`func (o *BrokerageAuthorizationDataFreshnessMode) GetSnaptradeOk() (*string, bool)`

GetSnaptradeOk returns a tuple with the Snaptrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSnaptrade

`func (o *BrokerageAuthorizationDataFreshnessMode) SetSnaptrade(v string)`

SetSnaptrade sets Snaptrade field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


