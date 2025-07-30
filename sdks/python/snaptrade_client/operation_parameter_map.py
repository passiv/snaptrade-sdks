operation_parameter_map = {
    '/accounts/{accountId}/activities-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
    '/holdings-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'brokerage_authorizations'
            },
        ]
    },
    '/accounts/{accountId}/balances-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/orders-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/recentOrders-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/holdings-GET': {
        'parameters': [
            {
                'name': 'accountId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/accounts-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/accounts/{accountId}-PUT': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
            {
                'name': 'userId'
            },
        ]
    },
    '/snapTrade/listUsers-GET': {
        'parameters': [
        ]
    },
    '/snapTrade/login-POST': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
    '/authorizations/{authorizationId}-GET': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/authorizations/{authorizationId}/disable-POST': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/authorizations-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/authorizations/{authorizationId}/refresh-POST': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/authorizations/{authorizationId}-DELETE': {
        'parameters': [
            {
                'name': 'authorizationId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
        ]
    },
    '/authorizations/{authorizationId}/returnRates-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'authorizationId'
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
    '/accounts/{accountId}/optionStrategy-POST': {
        'parameters': [
            {
                'name': 'underlying_symbol_id'
            },
            {
                'name': 'legs'
            },
            {
                'name': 'strategy_type'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/optionsChain-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'symbol'
            },
        ]
    },
    '/accounts/{accountId}/optionStrategy/{optionStrategyId}-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'optionStrategyId'
            },
        ]
    },
    '/accounts/{accountId}/options-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
        ]
    },
    '/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute-POST': {
        'parameters': [
            {
                'name': 'order_type'
            },
            {
                'name': 'time_in_force'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'optionStrategyId'
            },
            {
                'name': 'price'
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
    '/brokerages/{brokerageId}/instruments-GET': {
        'parameters': [
            {
                'name': 'brokerageId'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'brokerage_order_id'
            },
        ]
    },
    '/accounts/{accountId}/orders/cancel-POST': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'brokerage_order_id'
            },
        ]
    },
    '/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'accountId'
            },
            {
                'name': 'instrumentSymbol'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
    '/accounts/{accountId}/quotes-GET': {
        'parameters': [
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'symbol'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'universal_symbol_id'
            },
            {
                'name': 'symbol'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
            {
                'name': 'wait_to_confirm'
            },
        ]
    },
    '/accounts/{accountId}/trading/simple-POST': {
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
    '/accounts/{accountId}/trading/simple/preview-POST': {
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
    '/accounts/{accountId}/trading/simple/{brokerageOrderId}/replace-PATCH': {
        'parameters': [
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
                'name': 'brokerageOrderId'
            },
            {
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
            },
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
                'name': 'userId'
            },
            {
                'name': 'userSecret'
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