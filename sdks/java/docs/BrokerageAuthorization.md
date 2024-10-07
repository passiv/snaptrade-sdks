

# BrokerageAuthorization

A single connection with a brokerage. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade. |  [optional] |
|**createdDate** | **OffsetDateTime** | Timestamp of when the connection was established in SnapTrade. |  [optional] |
|**brokerage** | [**Brokerage**](Brokerage.md) |  |  [optional] |
|**name** | **String** | A short, human-readable name for the connection. |  [optional] |
|**type** | **String** | Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are &#x60;read&#x60; and &#x60;trade&#x60;. |  [optional] |
|**disabled** | **Boolean** | Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  |  [optional] |
|**disabledDate** | **OffsetDateTime** | Timestamp of when the connection was disabled in SnapTrade. |  [optional] |
|**meta** | **Map&lt;String, Object&gt;** | Additional data about the connection. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version. |  [optional] |
|**updatedDate** | **OffsetDateTime** | Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field. |  [optional] |



