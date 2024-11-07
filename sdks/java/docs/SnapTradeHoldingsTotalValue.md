

# SnapTradeHoldingsTotalValue

This field is deprecated. To get the brokerage reported total market value of the account, please refer to `account.balance.total`. The total market value of the account. Note that this field is calculated based on the sum of the values of account positions and cash balances known to SnapTrade. It may not be accurate if the brokerage account has holdings that SnapTrade is not aware of. For example, if the brokerage account holds assets that SnapTrade does not support, the total value may be underreported. In certain cases, this value may also be double-counting cash-equivalent assets if those assets are represented as both cash and positions in the account.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**value** | **Double** | Total value denominated in the currency of the &#x60;currency&#x60; field. |  [optional] |
|**currency** | **String** | The ISO-4217 currency code for the amount. |  [optional] |



