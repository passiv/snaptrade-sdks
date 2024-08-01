# UserSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**ReceiveCashNotification** | Pointer to **bool** |  | [optional] 
**ReceiveDriftNotification** | Pointer to **bool** |  | [optional] 
**UserTrialActivated** | Pointer to **bool** |  | [optional] 
**ActivatedTrialDate** | Pointer to **string** |  | [optional] 
**Demo** | Pointer to **bool** |  | [optional] 
**ApiEnabled** | Pointer to **bool** |  | [optional] 
**DriftThreshold** | Pointer to **float32** |  | [optional] 
**PreferredCurrency** | Pointer to [**Currency**](Currency.md) |  | [optional] 

## Methods

### NewUserSettings

`func NewUserSettings() *UserSettings`

NewUserSettings instantiates a new UserSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserSettingsWithDefaults

`func NewUserSettingsWithDefaults() *UserSettings`

NewUserSettingsWithDefaults instantiates a new UserSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *UserSettings) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *UserSettings) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *UserSettings) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *UserSettings) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetName

`func (o *UserSettings) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UserSettings) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UserSettings) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UserSettings) HasName() bool`

HasName returns a boolean if a field has been set.

### GetReceiveCashNotification

`func (o *UserSettings) GetReceiveCashNotification() bool`

GetReceiveCashNotification returns the ReceiveCashNotification field if non-nil, zero value otherwise.

### GetReceiveCashNotificationOk

`func (o *UserSettings) GetReceiveCashNotificationOk() (*bool, bool)`

GetReceiveCashNotificationOk returns a tuple with the ReceiveCashNotification field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReceiveCashNotification

`func (o *UserSettings) SetReceiveCashNotification(v bool)`

SetReceiveCashNotification sets ReceiveCashNotification field to given value.

### HasReceiveCashNotification

`func (o *UserSettings) HasReceiveCashNotification() bool`

HasReceiveCashNotification returns a boolean if a field has been set.

### GetReceiveDriftNotification

`func (o *UserSettings) GetReceiveDriftNotification() bool`

GetReceiveDriftNotification returns the ReceiveDriftNotification field if non-nil, zero value otherwise.

### GetReceiveDriftNotificationOk

`func (o *UserSettings) GetReceiveDriftNotificationOk() (*bool, bool)`

GetReceiveDriftNotificationOk returns a tuple with the ReceiveDriftNotification field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReceiveDriftNotification

`func (o *UserSettings) SetReceiveDriftNotification(v bool)`

SetReceiveDriftNotification sets ReceiveDriftNotification field to given value.

### HasReceiveDriftNotification

`func (o *UserSettings) HasReceiveDriftNotification() bool`

HasReceiveDriftNotification returns a boolean if a field has been set.

### GetUserTrialActivated

`func (o *UserSettings) GetUserTrialActivated() bool`

GetUserTrialActivated returns the UserTrialActivated field if non-nil, zero value otherwise.

### GetUserTrialActivatedOk

`func (o *UserSettings) GetUserTrialActivatedOk() (*bool, bool)`

GetUserTrialActivatedOk returns a tuple with the UserTrialActivated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserTrialActivated

`func (o *UserSettings) SetUserTrialActivated(v bool)`

SetUserTrialActivated sets UserTrialActivated field to given value.

### HasUserTrialActivated

`func (o *UserSettings) HasUserTrialActivated() bool`

HasUserTrialActivated returns a boolean if a field has been set.

### GetActivatedTrialDate

`func (o *UserSettings) GetActivatedTrialDate() string`

GetActivatedTrialDate returns the ActivatedTrialDate field if non-nil, zero value otherwise.

### GetActivatedTrialDateOk

`func (o *UserSettings) GetActivatedTrialDateOk() (*string, bool)`

GetActivatedTrialDateOk returns a tuple with the ActivatedTrialDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivatedTrialDate

`func (o *UserSettings) SetActivatedTrialDate(v string)`

SetActivatedTrialDate sets ActivatedTrialDate field to given value.

### HasActivatedTrialDate

`func (o *UserSettings) HasActivatedTrialDate() bool`

HasActivatedTrialDate returns a boolean if a field has been set.

### GetDemo

`func (o *UserSettings) GetDemo() bool`

GetDemo returns the Demo field if non-nil, zero value otherwise.

### GetDemoOk

`func (o *UserSettings) GetDemoOk() (*bool, bool)`

GetDemoOk returns a tuple with the Demo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDemo

`func (o *UserSettings) SetDemo(v bool)`

SetDemo sets Demo field to given value.

### HasDemo

`func (o *UserSettings) HasDemo() bool`

HasDemo returns a boolean if a field has been set.

### GetApiEnabled

`func (o *UserSettings) GetApiEnabled() bool`

GetApiEnabled returns the ApiEnabled field if non-nil, zero value otherwise.

### GetApiEnabledOk

`func (o *UserSettings) GetApiEnabledOk() (*bool, bool)`

GetApiEnabledOk returns a tuple with the ApiEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiEnabled

`func (o *UserSettings) SetApiEnabled(v bool)`

SetApiEnabled sets ApiEnabled field to given value.

### HasApiEnabled

`func (o *UserSettings) HasApiEnabled() bool`

HasApiEnabled returns a boolean if a field has been set.

### GetDriftThreshold

`func (o *UserSettings) GetDriftThreshold() float32`

GetDriftThreshold returns the DriftThreshold field if non-nil, zero value otherwise.

### GetDriftThresholdOk

`func (o *UserSettings) GetDriftThresholdOk() (*float32, bool)`

GetDriftThresholdOk returns a tuple with the DriftThreshold field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDriftThreshold

`func (o *UserSettings) SetDriftThreshold(v float32)`

SetDriftThreshold sets DriftThreshold field to given value.

### HasDriftThreshold

`func (o *UserSettings) HasDriftThreshold() bool`

HasDriftThreshold returns a boolean if a field has been set.

### GetPreferredCurrency

`func (o *UserSettings) GetPreferredCurrency() Currency`

GetPreferredCurrency returns the PreferredCurrency field if non-nil, zero value otherwise.

### GetPreferredCurrencyOk

`func (o *UserSettings) GetPreferredCurrencyOk() (*Currency, bool)`

GetPreferredCurrencyOk returns a tuple with the PreferredCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredCurrency

`func (o *UserSettings) SetPreferredCurrency(v Currency)`

SetPreferredCurrency sets PreferredCurrency field to given value.

### HasPreferredCurrency

`func (o *UserSettings) HasPreferredCurrency() bool`

HasPreferredCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


