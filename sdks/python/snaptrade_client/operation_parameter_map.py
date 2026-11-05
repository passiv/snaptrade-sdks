operation_parameter_map = {
    '/accounts/{accountId}/activities-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'startDate'
            },
            {
                'name': 'endDate'
            },
            {
                'name': 'offset'
            },
            {
                'name': 'limit'
            },
            {
                'name': 'type'
            },
        ]
    },
    '/accounts/{accountId}/balanceHistory-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/positions/all-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/holdings-GET': {
        'parameters': [
            {
                'name': 'brokerage_authorizations'
            },
        ]
    },
    '/accounts/{accountId}/balances-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/orders/details-POST': {
        'parameters': [
            {
                'name': 'brokerage_order_id'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/orders-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'state'
            },
            {
                'name': 'days'
            },
        ]
    },
    '/accounts/{accountId}/positions-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/recentOrders-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'only_executed'
            },
        ]
    },
    '/accounts/{accountId}/returnRates-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'timeframes'
            },
        ]
    },
    '/accounts/{accountId}/holdings-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts-GET': {
        'parameters': [
        ]
    },
    '/accounts/{accountId}-PUT': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/-GET': {
        'parameters': [
        ]
    },
    '/snapTrade/deleteUser-DELETE': {
        'parameters': [
        ]
    },
    '/snapTrade/listUsers-GET': {
        'parameters': [
        ]
    },
    '/snapTrade/login-POST': {
        'parameters': [
            {
                'name': 'broker'
            },
            {
                'name': 'immediateRedirect'
            },
            {
                'name': 'customRedirect'
            },
            {
                'name': 'reconnect'
            },
            {
                'name': 'connectionType'
            },
            {
                'name': 'showCloseButton'
            },
            {
                'name': 'darkMode'
            },
            {
                'name': 'connectionPortalVersion'
            },
        ]
    },
    '/snapTrade/registerUser-POST': {
        'parameters': [
            {
                'name': 'userId'
            },
        ]
    },
    '/snapTrade/resetUserSecret-POST': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/connection/{connectionId}-DELETE': {
        'parameters': [
            {
                'name': 'connectionId'
            },
        ]
    },
    '/authorizations/{authorizationId}-GET': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/authorizations/{authorizationId}/disable-POST': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/authorizations/{authorizationId}/accounts-GET': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/authorizations-GET': {
        'parameters': [
        ]
    },
    '/authorizations/{authorizationId}/refresh-POST': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/authorizations/{authorizationId}-DELETE': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/authorizations/{authorizationId}/returnRates-GET': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
            {
                'name': 'timeframes'
            },
        ]
    },
    '/sessionEvents-GET': {
        'parameters': [
            {
                'name': 'PartnerClientId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'sessionId'
            },
        ]
    },
    '/authorizations/{authorizationId}/transactions/sync-POST': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
        ]
    },
    '/snapTrade/tradeDetection/subscriptions-POST': {
        'parameters': [
            {
                'name': 'account_id'
            },
            {
                'name': 'check_interval_seconds'
            },
        ]
    },
    '/snapTrade/tradeDetection/subscriptions/cancel-POST': {
        'parameters': [
            {
                'name': 'account_id'
            },
        ]
    },
    '/accounts/{accountId}/orders/details/v2/{brokerageOrderId}-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'brokerageOrderId'
            },
        ]
    },
    '/accounts/{accountId}/orders/v2-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'state'
            },
            {
                'name': 'days'
            },
        ]
    },
    '/accounts/{accountId}/recentOrders/v2-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'only_executed'
            },
        ]
    },
    '/snapTrade/tradeDetection/subscriptions-GET': {
        'parameters': [
        ]
    },
    '/accounts/{accountId}/options-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
        ]
    },
    '/currencies/rates/{currencyPair}-GET': {
        'parameters': [
            {
                'name': 'currencyPair'
            },
        ]
    },
    '/snapTrade/partners-GET': {
        'parameters': [
        ]
    },
    '/securityTypes-GET': {
        'parameters': [
        ]
    },
    '/exchanges-GET': {
        'parameters': [
        ]
    },
    '/symbols-POST': {
        'parameters': [
            {
                'name': 'substring'
            },
        ]
    },
    '/symbols/{query}-GET': {
        'parameters': [
            {
                'name': 'query'
            },
        ]
    },
    '/brokerageAuthorizationTypes-GET': {
        'parameters': [
            {
                'name': 'brokerage'
            },
        ]
    },
    '/brokerages/{slug}/instruments-GET': {
        'parameters': [
            {
                'name': 'slug'
            },
        ]
    },
    '/brokerages-GET': {
        'parameters': [
        ]
    },
    '/currencies-GET': {
        'parameters': [
        ]
    },
    '/currencies/rates-GET': {
        'parameters': [
        ]
    },
    '/accounts/{accountId}/symbols-POST': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'substring'
            },
        ]
    },
    '/accounts/{accountId}/trading/cancel-POST': {
        'parameters': [
            {
                'name': 'brokerage_order_id'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/orders/cancel-POST': {
        'parameters': [
            {
                'name': 'brokerage_order_id'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'instrumentSymbol'
            },
        ]
    },
    '/accounts/{accountId}/trading/options/impact-POST': {
        'parameters': [
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'legs'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'limit_price'
            },
            {
                'name': 'stop_price'
            },
            {
                'name': 'price_effect'
            },
        ]
    },
    '/trade/impact-POST': {
        'parameters': [
            {
                'name': 'account_id'
            },
            {
                'name': 'action'
            },
            {
                'name': 'universal_symbol_id'
            },
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'price'
            },
            {
                'name': 'stop'
            },
            {
                'name': 'units'
            },
            {
                'name': 'notional_value'
            },
        ]
    },
    '/accounts/{accountId}/quotes/options-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'symbol'
            },
        ]
    },
    '/accounts/{accountId}/quotes-GET': {
        'parameters': [
            {
                'name': 'symbols'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'use_ticker'
            },
        ]
    },
    '/accounts/{accountId}/trading/bracket-POST': {
        'parameters': [
            {
                'name': 'action'
            },
            {
                'name': 'instrument'
            },
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'stop_loss'
            },
            {
                'name': 'take_profit'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'price'
            },
            {
                'name': 'stop'
            },
            {
                'name': 'units'
            },
        ]
    },
    '/accounts/{accountId}/trading/complex-POST': {
        'parameters': [
            {
                'name': 'type'
            },
            {
                'name': 'orders'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'client_order_id'
            },
        ]
    },
    '/accounts/{accountId}/trading/crypto-POST': {
        'parameters': [
            {
                'name': 'instrument'
            },
            {
                'name': 'side'
            },
            {
                'name': 'type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'amount'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'limit_price'
            },
            {
                'name': 'stop_price'
            },
            {
                'name': 'post_only'
            },
            {
                'name': 'expiration_date'
            },
        ]
    },
    '/trade/place-POST': {
        'parameters': [
            {
                'name': 'account_id'
            },
            {
                'name': 'action'
            },
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'universal_symbol_id'
            },
            {
                'name': 'symbol'
            },
            {
                'name': 'trading_session'
            },
            {
                'name': 'expiry_date'
            },
            {
                'name': 'price'
            },
            {
                'name': 'stop'
            },
            {
                'name': 'units'
            },
            {
                'name': 'notional_value'
            },
            {
                'name': 'client_order_id'
            },
        ]
    },
    '/accounts/{accountId}/trading/options-POST': {
        'parameters': [
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'legs'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'limit_price'
            },
            {
                'name': 'stop_price'
            },
            {
                'name': 'price_effect'
            },
        ]
    },
    '/trade/{tradeId}-POST': {
        'parameters': [
            {
                'name': 'tradeId'
            },
            {
                'name': 'wait_to_confirm'
            },
        ]
    },
    '/accounts/{accountId}/trading/crypto/preview-POST': {
        'parameters': [
            {
                'name': 'instrument'
            },
            {
                'name': 'side'
            },
            {
                'name': 'type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'amount'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'limit_price'
            },
            {
                'name': 'stop_price'
            },
            {
                'name': 'post_only'
            },
            {
                'name': 'expiration_date'
            },
        ]
    },
    '/accounts/{accountId}/trading/replace-POST': {
        'parameters': [
            {
                'name': 'brokerage_order_id'
            },
            {
                'name': 'action'
            },
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'price'
            },
            {
                'name': 'symbol'
            },
            {
                'name': 'stop'
            },
            {
                'name': 'units'
            },
        ]
    },
    '/accounts/{accountId}/trading/instruments/cryptocurrencyPairs-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'base'
            },
            {
                'name': 'quote'
            },
        ]
    },
    '/activities-GET': {
        'parameters': [
            {
                'name': 'startDate'
            },
            {
                'name': 'endDate'
            },
            {
                'name': 'accounts'
            },
            {
                'name': 'brokerageAuthorizations'
            },
            {
                'name': 'type'
            },
        ]
    },
    '/performance/custom-GET': {
        'parameters': [
            {
                'name': 'startDate'
            },
            {
                'name': 'endDate'
            },
            {
                'name': 'accounts'
            },
            {
                'name': 'detailed'
            },
            {
                'name': 'frequency'
            },
        ]
    },
};