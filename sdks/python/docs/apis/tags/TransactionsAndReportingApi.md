# snaptrade_client.transactions_and_reporting

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_activities**](#get_activities) | **get** /activities | Get transaction history for a user
[**get_reporting_custom_range**](#get_reporting_custom_range) | **get** /performance/custom | Get performance information for a specific timeframe

# **get_activities**

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get transaction history for a user
    get_activities_response = snaptrade.transactions_and_reporting.get_activities(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        start_date="2022-01-24",  # optional
        end_date="2022-01-24",  # optional
        accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",  # optional
        brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",  # optional
        type="DIVIDEND",  # optional
    )
    pprint(get_activities_response.body)
    pprint(get_activities_response.body["id"])
    pprint(get_activities_response.body["account"])
    pprint(get_activities_response.body["amount"])
    pprint(get_activities_response.body["currency"])
    pprint(get_activities_response.body["description"])
    pprint(get_activities_response.body["fee"])
    pprint(get_activities_response.body["fx_rate"])
    pprint(get_activities_response.body["institution"])
    pprint(get_activities_response.body["option_type"])
    pprint(get_activities_response.body["price"])
    pprint(get_activities_response.body["settlement_date"])
    pprint(get_activities_response.body["external_reference_id"])
    pprint(get_activities_response.body["symbol"])
    pprint(get_activities_response.body["option_symbol"])
    pprint(get_activities_response.body["trade_date"])
    pprint(get_activities_response.body["type"])
    pprint(get_activities_response.body["units"])
    pprint(get_activities_response.headers)
    pprint(get_activities_response.status)
    pprint(get_activities_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TransactionsAndReportingApi.get_activities: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_reporting_custom_range**

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get performance information for a specific timeframe
    get_reporting_custom_range_response = snaptrade.transactions_and_reporting.get_reporting_custom_range(
        start_date="2022-01-24",  # required
        end_date="2022-01-24",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",  # optional
        detailed=True,  # optional
        frequency="monthly",  # optional
    )
    pprint(get_reporting_custom_range_response.body)
    pprint(get_reporting_custom_range_response.body["total_equity_timeframe"])
    pprint(get_reporting_custom_range_response.body["contributions"])
    pprint(get_reporting_custom_range_response.body["contribution_timeframe"])
    pprint(
        get_reporting_custom_range_response.body["contribution_timeframe_cumulative"]
    )
    pprint(get_reporting_custom_range_response.body["withdrawal_timeframe"])
    pprint(get_reporting_custom_range_response.body["contribution_streak"])
    pprint(get_reporting_custom_range_response.body["contribution_months_contributed"])
    pprint(get_reporting_custom_range_response.body["contribution_total_months"])
    pprint(get_reporting_custom_range_response.body["dividends"])
    pprint(get_reporting_custom_range_response.body["dividend_income"])
    pprint(get_reporting_custom_range_response.body["monthly_dividends"])
    pprint(get_reporting_custom_range_response.body["bad_tickers"])
    pprint(get_reporting_custom_range_response.body["dividend_timeline"])
    pprint(get_reporting_custom_range_response.body["commissions"])
    pprint(get_reporting_custom_range_response.body["forex_fees"])
    pprint(get_reporting_custom_range_response.body["fees"])
    pprint(get_reporting_custom_range_response.body["rate_of_return"])
    pprint(get_reporting_custom_range_response.body["return_rate_timeframe"])
    pprint(get_reporting_custom_range_response.body["detailed_mode"])
    pprint(get_reporting_custom_range_response.headers)
    pprint(get_reporting_custom_range_response.status)
    pprint(get_reporting_custom_range_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling TransactionsAndReportingApi.get_reporting_custom_range: %s\n"
        % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

