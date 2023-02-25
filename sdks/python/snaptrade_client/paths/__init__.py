# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from snaptrade_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    SOLIDUS = "/"
    SNAP_TRADE_ACCEPT_DISCLAIMER = "/snapTrade/acceptDisclaimer"
    SNAP_TRADE_LIST_USERS = "/snapTrade/listUsers"
    SNAP_TRADE_REGISTER_USER = "/snapTrade/registerUser"
    SNAP_TRADE_DELETE_USER = "/snapTrade/deleteUser"
    SNAP_TRADE_LOGIN = "/snapTrade/login"
    SNAP_TRADE_ENCRYPTED_JWT = "/snapTrade/encryptedJWT"
    SNAP_TRADE_PARTNERS = "/snapTrade/partners"
    HOLDINGS = "/holdings"
    ACCOUNTS_ACCOUNT_ID_HOLDINGS = "/accounts/{accountId}/holdings"
    ACCOUNTS = "/accounts"
    ACCOUNTS_ACCOUNT_ID = "/accounts/{accountId}"
    ACCOUNTS_ACCOUNT_ID_BALANCES = "/accounts/{accountId}/balances"
    ACCOUNTS_ACCOUNT_ID_POSITIONS = "/accounts/{accountId}/positions"
    ACCOUNTS_ACCOUNT_ID_ORDERS = "/accounts/{accountId}/orders"
    ACCOUNTS_ACCOUNT_ID_QUOTES = "/accounts/{accountId}/quotes"
    ACCOUNTS_ACCOUNT_ID_ORDERS_CANCEL = "/accounts/{accountId}/orders/cancel"
    ACCOUNTS_ACCOUNT_ID_SYMBOLS = "/accounts/{accountId}/symbols"
    ACCOUNTS_ACCOUNT_ID_OPTIONS = "/accounts/{accountId}/options"
    ACCOUNTS_ACCOUNT_ID_OPTIONS_CHAIN = "/accounts/{accountId}/optionsChain"
    ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY = "/accounts/{accountId}/optionStrategy"
    ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID = "/accounts/{accountId}/optionStrategy/{optionStrategyId}"
    ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID_EXECUTE = "/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute"
    AUTHORIZATIONS = "/authorizations"
    AUTHORIZATIONS_AUTHORIZATION_ID = "/authorizations/{authorizationId}"
    BROKERAGES = "/brokerages"
    BROKERAGE_AUTHORIZATION_TYPES = "/brokerageAuthorizationTypes"
    CURRENCIES = "/currencies"
    SNAP_TRADE_LIST_USER_ERRORS = "/snapTrade/listUserErrors"
    CURRENCIES_RATES = "/currencies/rates"
    CURRENCIES_RATES_CURRENCY_PAIR = "/currencies/rates/{currencyPair}"
    EXCHANGES = "/exchanges"
    SECURITY_TYPES = "/securityTypes"
    MODEL_ASSET_CLASS = "/modelAssetClass"
    MODEL_ASSET_CLASS_MODEL_ASSET_CLASS_ID = "/modelAssetClass/{modelAssetClassId}"
    MODEL_PORTFOLIO = "/modelPortfolio"
    MODEL_PORTFOLIO_MODEL_PORTFOLIO_ID = "/modelPortfolio/{modelPortfolioId}"
    PORTFOLIO_GROUPS = "/portfolioGroups"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID = "/portfolioGroups/{portfolioGroupId}"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_ACCOUNTS = "/portfolioGroups/{portfolioGroupId}/accounts"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_BALANCES = "/portfolioGroups/{portfolioGroupId}/balances"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES = "/portfolioGroups/{portfolioGroupId}/calculatedtrades"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_TRADE_ID = "/portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId}"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_IMPACT = "/portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_MODIFY_TRADE_ID = "/portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId}"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_PLACE_ORDERS = "/portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS = "/portfolioGroups/{portfolioGroupId}/excludedassets"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS_SYMBOL_ID = "/portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId}"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_IMPORT = "/portfolioGroups/{portfolioGroupId}/import"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_INFO = "/portfolioGroups/{portfolioGroupId}/info"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_POSITIONS = "/portfolioGroups/{portfolioGroupId}/positions"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SETTINGS = "/portfolioGroups/{portfolioGroupId}/settings"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SYMBOLS = "/portfolioGroups/{portfolioGroupId}/symbols"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS = "/portfolioGroups/{portfolioGroupId}/targets"
    PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS_TARGET_ASSET_ID = "/portfolioGroups/{portfolioGroupId}/targets/{targetAssetId}"
    SYMBOLS = "/symbols"
    SYMBOLS_TICKER = "/symbols/{ticker}"
    TRADE_PLACE = "/trade/place"
    TRADE_IMPACT = "/trade/impact"
    TRADE_TRADE_ID = "/trade/{tradeId}"
    TRADE_OCO = "/trade/oco"
    ACTIVITIES = "/activities"
    PERFORMANCE_CUSTOM = "/performance/custom"
