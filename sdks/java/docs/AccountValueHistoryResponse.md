

# AccountValueHistoryResponse

The response to the account value history endpoint, containing a list of estimated account values at different points in time.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**history** | [**List&lt;AccountValueHistoryItem&gt;**](AccountValueHistoryItem.md) | List of estimated account values over time returned by the endpoint. The data may contain gaps and is best used for charting trends, rather than as a complete or exact record of historical account values. |  [optional] |
|**currency** | **String** | The ISO-4217 currency code for the account values. |  [optional] |



