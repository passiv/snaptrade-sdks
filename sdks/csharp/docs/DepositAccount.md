# SnapTrade.Net.Model.DepositAccount
A deposit account (checking, savings) under a connection. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**DisplayName** | **string** | A display name for the account. Either assigned by the user or by the institution itself. | [optional] 
**Number** | **string** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****4821&#x60;). | 
**InstitutionAccountId** | **string** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. | [optional] 
**InstitutionId** | **string** | Unique identifier for the institution that holds the account. | [optional] 
**OpeningDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. | [optional] 
**SyncStatus** | [**DepositAccountSyncStatus**](DepositAccountSyncStatus.md) |  | 
**RawType** | **string** | The account type as provided by the institution. | [optional] 
**NetValue** | [**DepositAccountNetValue**](DepositAccountNetValue.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

