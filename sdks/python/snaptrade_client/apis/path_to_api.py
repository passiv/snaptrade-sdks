import typing_extensions

from snaptrade_client.paths import PathValues
from snaptrade_client.apis.paths.root import Root
from snaptrade_client.apis.paths.snap_trade_register_user import SnapTradeRegisterUser
from snaptrade_client.apis.paths.snap_trade_login import SnapTradeLogin
from snaptrade_client.apis.paths.snap_trade_list_users import SnapTradeListUsers
from snaptrade_client.apis.paths.snap_trade_delete_user import SnapTradeDeleteUser
from snaptrade_client.apis.paths.snap_trade_reset_user_secret import SnapTradeResetUserSecret
from snaptrade_client.apis.paths.authorizations_authorization_id_return_rates import AuthorizationsAuthorizationIdReturnRates
from snaptrade_client.apis.paths.authorizations import Authorizations
from snaptrade_client.apis.paths.authorizations_authorization_id import AuthorizationsAuthorizationId
from snaptrade_client.apis.paths.authorizations_authorization_id_refresh import AuthorizationsAuthorizationIdRefresh
from snaptrade_client.apis.paths.authorizations_authorization_id_disable import AuthorizationsAuthorizationIdDisable
from snaptrade_client.apis.paths.session_events import SessionEvents
from snaptrade_client.apis.paths.accounts import Accounts
from snaptrade_client.apis.paths.holdings import Holdings
from snaptrade_client.apis.paths.accounts_account_id_holdings import AccountsAccountIdHoldings
from snaptrade_client.apis.paths.accounts_account_id import AccountsAccountId
from snaptrade_client.apis.paths.accounts_account_id_balances import AccountsAccountIdBalances
from snaptrade_client.apis.paths.accounts_account_id_positions import AccountsAccountIdPositions
from snaptrade_client.apis.paths.accounts_account_id_orders import AccountsAccountIdOrders
from snaptrade_client.apis.paths.accounts_account_id_recent_orders import AccountsAccountIdRecentOrders
from snaptrade_client.apis.paths.accounts_account_id_return_rates import AccountsAccountIdReturnRates
from snaptrade_client.apis.paths.accounts_account_id_activities import AccountsAccountIdActivities
from snaptrade_client.apis.paths.accounts_account_id_options import AccountsAccountIdOptions
from snaptrade_client.apis.paths.accounts_account_id_options_chain import AccountsAccountIdOptionsChain
from snaptrade_client.apis.paths.accounts_account_id_option_strategy import AccountsAccountIdOptionStrategy
from snaptrade_client.apis.paths.accounts_account_id_option_strategy_option_strategy_id import AccountsAccountIdOptionStrategyOptionStrategyId
from snaptrade_client.apis.paths.accounts_account_id_option_strategy_option_strategy_id_execute import AccountsAccountIdOptionStrategyOptionStrategyIdExecute
from snaptrade_client.apis.paths.activities import Activities
from snaptrade_client.apis.paths.performance_custom import PerformanceCustom
from snaptrade_client.apis.paths.accounts_account_id_quotes import AccountsAccountIdQuotes
from snaptrade_client.apis.paths.trade_impact import TradeImpact
from snaptrade_client.apis.paths.trade_trade_id import TradeTradeId
from snaptrade_client.apis.paths.trade_place import TradePlace
from snaptrade_client.apis.paths.accounts_account_id_orders_cancel import AccountsAccountIdOrdersCancel
from snaptrade_client.apis.paths.accounts_account_id_trading_bracket import AccountsAccountIdTradingBracket
from snaptrade_client.apis.paths.accounts_account_id_trading_simple_brokerage_order_id_replace import AccountsAccountIdTradingSimpleBrokerageOrderIdReplace
from snaptrade_client.apis.paths.accounts_account_id_trading_simple import AccountsAccountIdTradingSimple
from snaptrade_client.apis.paths.accounts_account_id_trading_simple_brokerage_order_id_cancel import AccountsAccountIdTradingSimpleBrokerageOrderIdCancel
from snaptrade_client.apis.paths.accounts_account_id_trading_simple_preview import AccountsAccountIdTradingSimplePreview
from snaptrade_client.apis.paths.accounts_account_id_trading_instruments_cryptocurrency_pairs import AccountsAccountIdTradingInstrumentsCryptocurrencyPairs
from snaptrade_client.apis.paths.accounts_account_id_trading_instruments_cryptocurrency_pairs_instrument_symbol_quote import AccountsAccountIdTradingInstrumentsCryptocurrencyPairsInstrumentSymbolQuote
from snaptrade_client.apis.paths.accounts_account_id_trading_options import AccountsAccountIdTradingOptions
from snaptrade_client.apis.paths.snap_trade_partners import SnapTradePartners
from snaptrade_client.apis.paths.accounts_account_id_symbols import AccountsAccountIdSymbols
from snaptrade_client.apis.paths.brokerages import Brokerages
from snaptrade_client.apis.paths.brokerage_authorization_types import BrokerageAuthorizationTypes
from snaptrade_client.apis.paths.currencies import Currencies
from snaptrade_client.apis.paths.currencies_rates import CurrenciesRates
from snaptrade_client.apis.paths.currencies_rates_currency_pair import CurrenciesRatesCurrencyPair
from snaptrade_client.apis.paths.exchanges import Exchanges
from snaptrade_client.apis.paths.security_types import SecurityTypes
from snaptrade_client.apis.paths.symbols import Symbols
from snaptrade_client.apis.paths.symbols_query import SymbolsQuery

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues._: Root,
        PathValues.SNAP_TRADE_REGISTER_USER: SnapTradeRegisterUser,
        PathValues.SNAP_TRADE_LOGIN: SnapTradeLogin,
        PathValues.SNAP_TRADE_LIST_USERS: SnapTradeListUsers,
        PathValues.SNAP_TRADE_DELETE_USER: SnapTradeDeleteUser,
        PathValues.SNAP_TRADE_RESET_USER_SECRET: SnapTradeResetUserSecret,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_RETURN_RATES: AuthorizationsAuthorizationIdReturnRates,
        PathValues.AUTHORIZATIONS: Authorizations,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID: AuthorizationsAuthorizationId,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_REFRESH: AuthorizationsAuthorizationIdRefresh,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_DISABLE: AuthorizationsAuthorizationIdDisable,
        PathValues.SESSION_EVENTS: SessionEvents,
        PathValues.ACCOUNTS: Accounts,
        PathValues.HOLDINGS: Holdings,
        PathValues.ACCOUNTS_ACCOUNT_ID_HOLDINGS: AccountsAccountIdHoldings,
        PathValues.ACCOUNTS_ACCOUNT_ID: AccountsAccountId,
        PathValues.ACCOUNTS_ACCOUNT_ID_BALANCES: AccountsAccountIdBalances,
        PathValues.ACCOUNTS_ACCOUNT_ID_POSITIONS: AccountsAccountIdPositions,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS: AccountsAccountIdOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_RECENT_ORDERS: AccountsAccountIdRecentOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_RETURN_RATES: AccountsAccountIdReturnRates,
        PathValues.ACCOUNTS_ACCOUNT_ID_ACTIVITIES: AccountsAccountIdActivities,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS: AccountsAccountIdOptions,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS_CHAIN: AccountsAccountIdOptionsChain,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY: AccountsAccountIdOptionStrategy,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID: AccountsAccountIdOptionStrategyOptionStrategyId,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID_EXECUTE: AccountsAccountIdOptionStrategyOptionStrategyIdExecute,
        PathValues.ACTIVITIES: Activities,
        PathValues.PERFORMANCE_CUSTOM: PerformanceCustom,
        PathValues.ACCOUNTS_ACCOUNT_ID_QUOTES: AccountsAccountIdQuotes,
        PathValues.TRADE_IMPACT: TradeImpact,
        PathValues.TRADE_TRADE_ID: TradeTradeId,
        PathValues.TRADE_PLACE: TradePlace,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS_CANCEL: AccountsAccountIdOrdersCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_BRACKET: AccountsAccountIdTradingBracket,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_BROKERAGE_ORDER_ID_REPLACE: AccountsAccountIdTradingSimpleBrokerageOrderIdReplace,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE: AccountsAccountIdTradingSimple,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_BROKERAGE_ORDER_ID_CANCEL: AccountsAccountIdTradingSimpleBrokerageOrderIdCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_PREVIEW: AccountsAccountIdTradingSimplePreview,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_INSTRUMENTS_CRYPTOCURRENCY_PAIRS: AccountsAccountIdTradingInstrumentsCryptocurrencyPairs,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_INSTRUMENTS_CRYPTOCURRENCY_PAIRS_INSTRUMENT_SYMBOL_QUOTE: AccountsAccountIdTradingInstrumentsCryptocurrencyPairsInstrumentSymbolQuote,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_OPTIONS: AccountsAccountIdTradingOptions,
        PathValues.SNAP_TRADE_PARTNERS: SnapTradePartners,
        PathValues.ACCOUNTS_ACCOUNT_ID_SYMBOLS: AccountsAccountIdSymbols,
        PathValues.BROKERAGES: Brokerages,
        PathValues.BROKERAGE_AUTHORIZATION_TYPES: BrokerageAuthorizationTypes,
        PathValues.CURRENCIES: Currencies,
        PathValues.CURRENCIES_RATES: CurrenciesRates,
        PathValues.CURRENCIES_RATES_CURRENCY_PAIR: CurrenciesRatesCurrencyPair,
        PathValues.EXCHANGES: Exchanges,
        PathValues.SECURITY_TYPES: SecurityTypes,
        PathValues.SYMBOLS: Symbols,
        PathValues.SYMBOLS_QUERY: SymbolsQuery,
    }
)

path_to_api = PathToApi(
    {
        PathValues._: Root,
        PathValues.SNAP_TRADE_REGISTER_USER: SnapTradeRegisterUser,
        PathValues.SNAP_TRADE_LOGIN: SnapTradeLogin,
        PathValues.SNAP_TRADE_LIST_USERS: SnapTradeListUsers,
        PathValues.SNAP_TRADE_DELETE_USER: SnapTradeDeleteUser,
        PathValues.SNAP_TRADE_RESET_USER_SECRET: SnapTradeResetUserSecret,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_RETURN_RATES: AuthorizationsAuthorizationIdReturnRates,
        PathValues.AUTHORIZATIONS: Authorizations,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID: AuthorizationsAuthorizationId,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_REFRESH: AuthorizationsAuthorizationIdRefresh,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID_DISABLE: AuthorizationsAuthorizationIdDisable,
        PathValues.SESSION_EVENTS: SessionEvents,
        PathValues.ACCOUNTS: Accounts,
        PathValues.HOLDINGS: Holdings,
        PathValues.ACCOUNTS_ACCOUNT_ID_HOLDINGS: AccountsAccountIdHoldings,
        PathValues.ACCOUNTS_ACCOUNT_ID: AccountsAccountId,
        PathValues.ACCOUNTS_ACCOUNT_ID_BALANCES: AccountsAccountIdBalances,
        PathValues.ACCOUNTS_ACCOUNT_ID_POSITIONS: AccountsAccountIdPositions,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS: AccountsAccountIdOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_RECENT_ORDERS: AccountsAccountIdRecentOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_RETURN_RATES: AccountsAccountIdReturnRates,
        PathValues.ACCOUNTS_ACCOUNT_ID_ACTIVITIES: AccountsAccountIdActivities,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS: AccountsAccountIdOptions,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS_CHAIN: AccountsAccountIdOptionsChain,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY: AccountsAccountIdOptionStrategy,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID: AccountsAccountIdOptionStrategyOptionStrategyId,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID_EXECUTE: AccountsAccountIdOptionStrategyOptionStrategyIdExecute,
        PathValues.ACTIVITIES: Activities,
        PathValues.PERFORMANCE_CUSTOM: PerformanceCustom,
        PathValues.ACCOUNTS_ACCOUNT_ID_QUOTES: AccountsAccountIdQuotes,
        PathValues.TRADE_IMPACT: TradeImpact,
        PathValues.TRADE_TRADE_ID: TradeTradeId,
        PathValues.TRADE_PLACE: TradePlace,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS_CANCEL: AccountsAccountIdOrdersCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_BRACKET: AccountsAccountIdTradingBracket,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_BROKERAGE_ORDER_ID_REPLACE: AccountsAccountIdTradingSimpleBrokerageOrderIdReplace,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE: AccountsAccountIdTradingSimple,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_BROKERAGE_ORDER_ID_CANCEL: AccountsAccountIdTradingSimpleBrokerageOrderIdCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_SIMPLE_PREVIEW: AccountsAccountIdTradingSimplePreview,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_INSTRUMENTS_CRYPTOCURRENCY_PAIRS: AccountsAccountIdTradingInstrumentsCryptocurrencyPairs,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_INSTRUMENTS_CRYPTOCURRENCY_PAIRS_INSTRUMENT_SYMBOL_QUOTE: AccountsAccountIdTradingInstrumentsCryptocurrencyPairsInstrumentSymbolQuote,
        PathValues.ACCOUNTS_ACCOUNT_ID_TRADING_OPTIONS: AccountsAccountIdTradingOptions,
        PathValues.SNAP_TRADE_PARTNERS: SnapTradePartners,
        PathValues.ACCOUNTS_ACCOUNT_ID_SYMBOLS: AccountsAccountIdSymbols,
        PathValues.BROKERAGES: Brokerages,
        PathValues.BROKERAGE_AUTHORIZATION_TYPES: BrokerageAuthorizationTypes,
        PathValues.CURRENCIES: Currencies,
        PathValues.CURRENCIES_RATES: CurrenciesRates,
        PathValues.CURRENCIES_RATES_CURRENCY_PAIR: CurrenciesRatesCurrencyPair,
        PathValues.EXCHANGES: Exchanges,
        PathValues.SECURITY_TYPES: SecurityTypes,
        PathValues.SYMBOLS: Symbols,
        PathValues.SYMBOLS_QUERY: SymbolsQuery,
    }
)
