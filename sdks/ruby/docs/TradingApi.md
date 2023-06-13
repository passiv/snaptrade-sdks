# SnapTrade::TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_user_account_order**](TradingApi.md#cancel_user_account_order) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account |
| [**get_calculated_trade_impact_by_id**](TradingApi.md#get_calculated_trade_impact_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**get_calculated_trades_impact**](TradingApi.md#get_calculated_trades_impact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio |
| [**get_order_impact**](TradingApi.md#get_order_impact) | **POST** /trade/impact | Check impact of trades on account. |
| [**get_user_account_quotes**](TradingApi.md#get_user_account_quotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**modify_calculated_trade_by_id**](TradingApi.md#modify_calculated_trade_by_id) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**place_calculated_trades**](TradingApi.md#place_calculated_trades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series |
| [**place_force_order**](TradingApi.md#place_force_order) | **POST** /trade/place | Place a trade with NO validation. |
| [**place_oco_order**](TradingApi.md#place_oco_order) | **POST** /trade/oco | Place a OCO (One Cancels Other) order |
| [**place_order**](TradingApi.md#place_order) | **POST** /trade/{tradeId} | Place order |

## cancel_user_account_order

Cancel open order in account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
brokerage_order_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Cancel open order in account
  result = SnapTrade::Trading.cancel_user_account_order(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    brokerage_order_id: brokerage_order_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.cancel_user_account_order: #{e}"
end
```

#### Using the cancel_user_account_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
brokerage_order_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Cancel open order in account
  data, status_code, headers, response = SnapTrade::Trading.cancel_user_account_order_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    brokerage_order_id: brokerage_order_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => AccountOrderRecord
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.cancel_user_account_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **trading_cancel_user_account_order_request** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md) | The Order ID to be canceled |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

## get_calculated_trade_impact_by_id

Return details of a specific trade before it's placed

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "tradeId_example"

begin
  # Return details of a specific trade before it's placed
  result = SnapTrade::Trading.get_calculated_trade_impact_by_id(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_calculated_trade_impact_by_id: #{e}"
end
```

#### Using the get_calculated_trade_impact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "tradeId_example"

begin
  # Return details of a specific trade before it's placed
  data, status_code, headers, response = SnapTrade::Trading.get_calculated_trade_impact_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Trade
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_calculated_trade_impact_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |
| **trade_id** | **String** | The ID of trade object |  |

### Return type

[**Trade**](Trade.md)

## get_calculated_trades_impact

Return the impact of placing a series of trades on the portfolio

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"

begin
  # Return the impact of placing a series of trades on the portfolio
  result = SnapTrade::Trading.get_calculated_trades_impact(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_calculated_trades_impact: #{e}"
end
```

#### Using the get_calculated_trades_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"

begin
  # Return the impact of placing a series of trades on the portfolio
  data, status_code, headers, response = SnapTrade::Trading.get_calculated_trades_impact_with_http_info(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<TradeImpact>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_calculated_trades_impact: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |

### Return type

[**Array&lt;TradeImpact&gt;**](TradeImpact.md)

## get_order_impact

Check impact of trades on account.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
action = "BUY"
order_type = "Limit"
price = 31.33
stop = 31.33
time_in_force = "Day"
units = 3.14
universal_symbol_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Check impact of trades on account.
  result = SnapTrade::Trading.get_order_impact(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    action: action,
    order_type: order_type,
    price: price,
    stop: stop,
    time_in_force: time_in_force,
    units: units,
    universal_symbol_id: universal_symbol_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_order_impact: #{e}"
end
```

#### Using the get_order_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
action = "BUY"
order_type = "Limit"
price = 31.33
stop = 31.33
time_in_force = "Day"
units = 3.14
universal_symbol_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Check impact of trades on account.
  data, status_code, headers, response = SnapTrade::Trading.get_order_impact_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    action: action,
    order_type: order_type,
    price: price,
    stop: stop,
    time_in_force: time_in_force,
    units: units,
    universal_symbol_id: universal_symbol_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ManualTradeAndImpact
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_order_impact: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**ManualTradeAndImpact**](ManualTradeAndImpact.md)

## get_user_account_quotes

Get symbol quotes

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
symbols = "symbols_example"
account_id = "accountId_example"
use_ticker = True

begin
  # Get symbol quotes
  result = SnapTrade::Trading.get_user_account_quotes(
    user_id: user_id,
    user_secret: user_secret,
    symbols: symbols,
    account_id: account_id,
    use_ticker: use_ticker,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_user_account_quotes: #{e}"
end
```

#### Using the get_user_account_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
symbols = "symbols_example"
account_id = "accountId_example"
use_ticker = True

begin
  # Get symbol quotes
  data, status_code, headers, response = SnapTrade::Trading.get_user_account_quotes_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    symbols: symbols,
    account_id: account_id,
    use_ticker: use_ticker,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<SymbolsQuotesInner>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.get_user_account_quotes: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **symbols** | **String** | List of universal_symbol_id or tickers to get quotes for. |  |
| **account_id** | **String** | The ID of the account to get quotes. |  |
| **use_ticker** | **Boolean** | Should be set to True if providing tickers. | [optional] |

### Return type

[**Array&lt;SymbolsQuotesInner&gt;**](SymbolsQuotesInner.md)

## modify_calculated_trade_by_id

Modify units of a trade before it is placed

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "tradeId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
account = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "brokerage_authorization" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "portfolio_group" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Registered Retirement Savings Account",
        "number" => "Q6542138443",
        "institution_name" => "Alpaca",
        "created_date" => "2021-06-04T16:26:46.523Z",
    }
symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
        "allows_fractional_units" => True,
    }
universal_symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "symbol" => "VAB.TO",
        "raw_symbol" => "VAB",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    }
action = "BUY"
units = 6
price = 24.81
sequence = 1

begin
  # Modify units of a trade before it is placed
  result = SnapTrade::Trading.modify_calculated_trade_by_id(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
    id: id,
    account: account,
    symbol: symbol,
    universal_symbol: universal_symbol,
    action: action,
    units: units,
    price: price,
    sequence: sequence,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.modify_calculated_trade_by_id: #{e}"
end
```

#### Using the modify_calculated_trade_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "tradeId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
account = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "brokerage_authorization" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "portfolio_group" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Registered Retirement Savings Account",
        "number" => "Q6542138443",
        "institution_name" => "Alpaca",
        "created_date" => "2021-06-04T16:26:46.523Z",
    }
symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
        "allows_fractional_units" => True,
    }
universal_symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "symbol" => "VAB.TO",
        "raw_symbol" => "VAB",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    }
action = "BUY"
units = 6
price = 24.81
sequence = 1

begin
  # Modify units of a trade before it is placed
  data, status_code, headers, response = SnapTrade::Trading.modify_calculated_trade_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
    id: id,
    account: account,
    symbol: symbol,
    universal_symbol: universal_symbol,
    action: action,
    units: units,
    price: price,
    sequence: sequence,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Trade
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.modify_calculated_trade_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |
| **trade_id** | **String** | The ID of trade object |  |
| **trade** | [**Trade**](Trade.md) |  | [optional] |

### Return type

[**Trade**](Trade.md)

## place_calculated_trades

Place orders for the CalculatedTrades in series

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"

begin
  # Place orders for the CalculatedTrades in series
  result = SnapTrade::Trading.place_calculated_trades(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_calculated_trades: #{e}"
end
```

#### Using the place_calculated_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"

begin
  # Place orders for the CalculatedTrades in series
  data, status_code, headers, response = SnapTrade::Trading.place_calculated_trades_with_http_info(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<TradeExecutionStatus>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_calculated_trades: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |

### Return type

[**Array&lt;TradeExecutionStatus&gt;**](TradeExecutionStatus.md)

## place_force_order

Place a trade with NO validation.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
action = "BUY"
order_type = "Limit"
price = 31.33
stop = 31.33
time_in_force = "Day"
units = 3.14
universal_symbol_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Place a trade with NO validation.
  result = SnapTrade::Trading.place_force_order(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    action: action,
    order_type: order_type,
    price: price,
    stop: stop,
    time_in_force: time_in_force,
    units: units,
    universal_symbol_id: universal_symbol_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_force_order: #{e}"
end
```

#### Using the place_force_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
action = "BUY"
order_type = "Limit"
price = 31.33
stop = 31.33
time_in_force = "Day"
units = 3.14
universal_symbol_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Place a trade with NO validation.
  data, status_code, headers, response = SnapTrade::Trading.place_force_order_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    action: action,
    order_type: order_type,
    price: price,
    stop: stop,
    time_in_force: time_in_force,
    units: units,
    universal_symbol_id: universal_symbol_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => AccountOrderRecord
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_force_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

## place_oco_order

Place a OCO (One Cancels Other) order

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
first_trade_id = None
second_trade_id = None

begin
  # Place a OCO (One Cancels Other) order
  result = SnapTrade::Trading.place_oco_order(
    user_id: user_id,
    user_secret: user_secret,
    first_trade_id: first_trade_id,
    second_trade_id: second_trade_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_oco_order: #{e}"
end
```

#### Using the place_oco_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
first_trade_id = None
second_trade_id = None

begin
  # Place a OCO (One Cancels Other) order
  data, status_code, headers, response = SnapTrade::Trading.place_oco_order_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    first_trade_id: first_trade_id,
    second_trade_id: second_trade_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => AccountOrderRecord
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_oco_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **trading_place_oco_order_request** | [**TradingPlaceOCOOrderRequest**](TradingPlaceOCOOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

## place_order

Place order

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

trade_id = "tradeId_example"
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # Place order
  result = SnapTrade::Trading.place_order(
    trade_id: trade_id,
    user_id: user_id,
    user_secret: user_secret,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_order: #{e}"
end
```

#### Using the place_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
trade_id = "tradeId_example"
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # Place order
  data, status_code, headers, response = SnapTrade::Trading.place_order_with_http_info(
    trade_id: trade_id,
    user_id: user_id,
    user_secret: user_secret,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => AccountOrderRecord
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::Trading.place_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_id** | **String** | The ID of trade object obtained from trade/impact endpoint |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

