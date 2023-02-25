import typing_extensions

from snaptrade_client.paths import PathValues
from snaptrade_client.apis.paths.root import Root
from snaptrade_client.apis.paths.snap_trade_accept_disclaimer import SnapTradeAcceptDisclaimer
from snaptrade_client.apis.paths.snap_trade_list_users import SnapTradeListUsers
from snaptrade_client.apis.paths.snap_trade_register_user import SnapTradeRegisterUser
from snaptrade_client.apis.paths.snap_trade_delete_user import SnapTradeDeleteUser
from snaptrade_client.apis.paths.snap_trade_login import SnapTradeLogin
from snaptrade_client.apis.paths.snap_trade_encrypted_jwt import SnapTradeEncryptedJWT
from snaptrade_client.apis.paths.snap_trade_partners import SnapTradePartners
from snaptrade_client.apis.paths.holdings import Holdings
from snaptrade_client.apis.paths.accounts_account_id_holdings import AccountsAccountIdHoldings
from snaptrade_client.apis.paths.accounts import Accounts
from snaptrade_client.apis.paths.accounts_account_id import AccountsAccountId
from snaptrade_client.apis.paths.accounts_account_id_balances import AccountsAccountIdBalances
from snaptrade_client.apis.paths.accounts_account_id_positions import AccountsAccountIdPositions
from snaptrade_client.apis.paths.accounts_account_id_orders import AccountsAccountIdOrders
from snaptrade_client.apis.paths.accounts_account_id_quotes import AccountsAccountIdQuotes
from snaptrade_client.apis.paths.accounts_account_id_orders_cancel import AccountsAccountIdOrdersCancel
from snaptrade_client.apis.paths.accounts_account_id_symbols import AccountsAccountIdSymbols
from snaptrade_client.apis.paths.accounts_account_id_options import AccountsAccountIdOptions
from snaptrade_client.apis.paths.accounts_account_id_options_chain import AccountsAccountIdOptionsChain
from snaptrade_client.apis.paths.accounts_account_id_option_strategy import AccountsAccountIdOptionStrategy
from snaptrade_client.apis.paths.accounts_account_id_option_strategy_option_strategy_id import AccountsAccountIdOptionStrategyOptionStrategyId
from snaptrade_client.apis.paths.accounts_account_id_option_strategy_option_strategy_id_execute import AccountsAccountIdOptionStrategyOptionStrategyIdExecute
from snaptrade_client.apis.paths.authorizations import Authorizations
from snaptrade_client.apis.paths.authorizations_authorization_id import AuthorizationsAuthorizationId
from snaptrade_client.apis.paths.brokerages import Brokerages
from snaptrade_client.apis.paths.brokerage_authorization_types import BrokerageAuthorizationTypes
from snaptrade_client.apis.paths.currencies import Currencies
from snaptrade_client.apis.paths.snap_trade_list_user_errors import SnapTradeListUserErrors
from snaptrade_client.apis.paths.currencies_rates import CurrenciesRates
from snaptrade_client.apis.paths.currencies_rates_currency_pair import CurrenciesRatesCurrencyPair
from snaptrade_client.apis.paths.exchanges import Exchanges
from snaptrade_client.apis.paths.security_types import SecurityTypes
from snaptrade_client.apis.paths.model_asset_class import ModelAssetClass
from snaptrade_client.apis.paths.model_asset_class_model_asset_class_id import ModelAssetClassModelAssetClassId
from snaptrade_client.apis.paths.model_portfolio import ModelPortfolio
from snaptrade_client.apis.paths.model_portfolio_model_portfolio_id import ModelPortfolioModelPortfolioId
from snaptrade_client.apis.paths.portfolio_groups import PortfolioGroups
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id import PortfolioGroupsPortfolioGroupId
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_accounts import PortfolioGroupsPortfolioGroupIdAccounts
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_balances import PortfolioGroupsPortfolioGroupIdBalances
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_calculatedtrades import PortfolioGroupsPortfolioGroupIdCalculatedtrades
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id import PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeId
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact import PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpact
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id import PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeId
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders import PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrders
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_excludedassets import PortfolioGroupsPortfolioGroupIdExcludedassets
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_excludedassets_symbol_id import PortfolioGroupsPortfolioGroupIdExcludedassetsSymbolId
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_import import PortfolioGroupsPortfolioGroupIdImport
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_info import PortfolioGroupsPortfolioGroupIdInfo
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_positions import PortfolioGroupsPortfolioGroupIdPositions
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_settings import PortfolioGroupsPortfolioGroupIdSettings
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_symbols import PortfolioGroupsPortfolioGroupIdSymbols
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_targets import PortfolioGroupsPortfolioGroupIdTargets
from snaptrade_client.apis.paths.portfolio_groups_portfolio_group_id_targets_target_asset_id import PortfolioGroupsPortfolioGroupIdTargetsTargetAssetId
from snaptrade_client.apis.paths.symbols import Symbols
from snaptrade_client.apis.paths.symbols_ticker import SymbolsTicker
from snaptrade_client.apis.paths.trade_place import TradePlace
from snaptrade_client.apis.paths.trade_impact import TradeImpact
from snaptrade_client.apis.paths.trade_trade_id import TradeTradeId
from snaptrade_client.apis.paths.trade_oco import TradeOco
from snaptrade_client.apis.paths.activities import Activities
from snaptrade_client.apis.paths.performance_custom import PerformanceCustom

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.SOLIDUS: Root,
        PathValues.SNAP_TRADE_ACCEPT_DISCLAIMER: SnapTradeAcceptDisclaimer,
        PathValues.SNAP_TRADE_LIST_USERS: SnapTradeListUsers,
        PathValues.SNAP_TRADE_REGISTER_USER: SnapTradeRegisterUser,
        PathValues.SNAP_TRADE_DELETE_USER: SnapTradeDeleteUser,
        PathValues.SNAP_TRADE_LOGIN: SnapTradeLogin,
        PathValues.SNAP_TRADE_ENCRYPTED_JWT: SnapTradeEncryptedJWT,
        PathValues.SNAP_TRADE_PARTNERS: SnapTradePartners,
        PathValues.HOLDINGS: Holdings,
        PathValues.ACCOUNTS_ACCOUNT_ID_HOLDINGS: AccountsAccountIdHoldings,
        PathValues.ACCOUNTS: Accounts,
        PathValues.ACCOUNTS_ACCOUNT_ID: AccountsAccountId,
        PathValues.ACCOUNTS_ACCOUNT_ID_BALANCES: AccountsAccountIdBalances,
        PathValues.ACCOUNTS_ACCOUNT_ID_POSITIONS: AccountsAccountIdPositions,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS: AccountsAccountIdOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_QUOTES: AccountsAccountIdQuotes,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS_CANCEL: AccountsAccountIdOrdersCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_SYMBOLS: AccountsAccountIdSymbols,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS: AccountsAccountIdOptions,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS_CHAIN: AccountsAccountIdOptionsChain,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY: AccountsAccountIdOptionStrategy,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID: AccountsAccountIdOptionStrategyOptionStrategyId,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID_EXECUTE: AccountsAccountIdOptionStrategyOptionStrategyIdExecute,
        PathValues.AUTHORIZATIONS: Authorizations,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID: AuthorizationsAuthorizationId,
        PathValues.BROKERAGES: Brokerages,
        PathValues.BROKERAGE_AUTHORIZATION_TYPES: BrokerageAuthorizationTypes,
        PathValues.CURRENCIES: Currencies,
        PathValues.SNAP_TRADE_LIST_USER_ERRORS: SnapTradeListUserErrors,
        PathValues.CURRENCIES_RATES: CurrenciesRates,
        PathValues.CURRENCIES_RATES_CURRENCY_PAIR: CurrenciesRatesCurrencyPair,
        PathValues.EXCHANGES: Exchanges,
        PathValues.SECURITY_TYPES: SecurityTypes,
        PathValues.MODEL_ASSET_CLASS: ModelAssetClass,
        PathValues.MODEL_ASSET_CLASS_MODEL_ASSET_CLASS_ID: ModelAssetClassModelAssetClassId,
        PathValues.MODEL_PORTFOLIO: ModelPortfolio,
        PathValues.MODEL_PORTFOLIO_MODEL_PORTFOLIO_ID: ModelPortfolioModelPortfolioId,
        PathValues.PORTFOLIO_GROUPS: PortfolioGroups,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID: PortfolioGroupsPortfolioGroupId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_ACCOUNTS: PortfolioGroupsPortfolioGroupIdAccounts,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_BALANCES: PortfolioGroupsPortfolioGroupIdBalances,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES: PortfolioGroupsPortfolioGroupIdCalculatedtrades,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_TRADE_ID: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_IMPACT: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpact,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_MODIFY_TRADE_ID: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_PLACE_ORDERS: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrders,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS: PortfolioGroupsPortfolioGroupIdExcludedassets,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS_SYMBOL_ID: PortfolioGroupsPortfolioGroupIdExcludedassetsSymbolId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_IMPORT: PortfolioGroupsPortfolioGroupIdImport,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_INFO: PortfolioGroupsPortfolioGroupIdInfo,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_POSITIONS: PortfolioGroupsPortfolioGroupIdPositions,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SETTINGS: PortfolioGroupsPortfolioGroupIdSettings,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SYMBOLS: PortfolioGroupsPortfolioGroupIdSymbols,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS: PortfolioGroupsPortfolioGroupIdTargets,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS_TARGET_ASSET_ID: PortfolioGroupsPortfolioGroupIdTargetsTargetAssetId,
        PathValues.SYMBOLS: Symbols,
        PathValues.SYMBOLS_TICKER: SymbolsTicker,
        PathValues.TRADE_PLACE: TradePlace,
        PathValues.TRADE_IMPACT: TradeImpact,
        PathValues.TRADE_TRADE_ID: TradeTradeId,
        PathValues.TRADE_OCO: TradeOco,
        PathValues.ACTIVITIES: Activities,
        PathValues.PERFORMANCE_CUSTOM: PerformanceCustom,
    }
)

path_to_api = PathToApi(
    {
        PathValues.SOLIDUS: Root,
        PathValues.SNAP_TRADE_ACCEPT_DISCLAIMER: SnapTradeAcceptDisclaimer,
        PathValues.SNAP_TRADE_LIST_USERS: SnapTradeListUsers,
        PathValues.SNAP_TRADE_REGISTER_USER: SnapTradeRegisterUser,
        PathValues.SNAP_TRADE_DELETE_USER: SnapTradeDeleteUser,
        PathValues.SNAP_TRADE_LOGIN: SnapTradeLogin,
        PathValues.SNAP_TRADE_ENCRYPTED_JWT: SnapTradeEncryptedJWT,
        PathValues.SNAP_TRADE_PARTNERS: SnapTradePartners,
        PathValues.HOLDINGS: Holdings,
        PathValues.ACCOUNTS_ACCOUNT_ID_HOLDINGS: AccountsAccountIdHoldings,
        PathValues.ACCOUNTS: Accounts,
        PathValues.ACCOUNTS_ACCOUNT_ID: AccountsAccountId,
        PathValues.ACCOUNTS_ACCOUNT_ID_BALANCES: AccountsAccountIdBalances,
        PathValues.ACCOUNTS_ACCOUNT_ID_POSITIONS: AccountsAccountIdPositions,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS: AccountsAccountIdOrders,
        PathValues.ACCOUNTS_ACCOUNT_ID_QUOTES: AccountsAccountIdQuotes,
        PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS_CANCEL: AccountsAccountIdOrdersCancel,
        PathValues.ACCOUNTS_ACCOUNT_ID_SYMBOLS: AccountsAccountIdSymbols,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS: AccountsAccountIdOptions,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTIONS_CHAIN: AccountsAccountIdOptionsChain,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY: AccountsAccountIdOptionStrategy,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID: AccountsAccountIdOptionStrategyOptionStrategyId,
        PathValues.ACCOUNTS_ACCOUNT_ID_OPTION_STRATEGY_OPTION_STRATEGY_ID_EXECUTE: AccountsAccountIdOptionStrategyOptionStrategyIdExecute,
        PathValues.AUTHORIZATIONS: Authorizations,
        PathValues.AUTHORIZATIONS_AUTHORIZATION_ID: AuthorizationsAuthorizationId,
        PathValues.BROKERAGES: Brokerages,
        PathValues.BROKERAGE_AUTHORIZATION_TYPES: BrokerageAuthorizationTypes,
        PathValues.CURRENCIES: Currencies,
        PathValues.SNAP_TRADE_LIST_USER_ERRORS: SnapTradeListUserErrors,
        PathValues.CURRENCIES_RATES: CurrenciesRates,
        PathValues.CURRENCIES_RATES_CURRENCY_PAIR: CurrenciesRatesCurrencyPair,
        PathValues.EXCHANGES: Exchanges,
        PathValues.SECURITY_TYPES: SecurityTypes,
        PathValues.MODEL_ASSET_CLASS: ModelAssetClass,
        PathValues.MODEL_ASSET_CLASS_MODEL_ASSET_CLASS_ID: ModelAssetClassModelAssetClassId,
        PathValues.MODEL_PORTFOLIO: ModelPortfolio,
        PathValues.MODEL_PORTFOLIO_MODEL_PORTFOLIO_ID: ModelPortfolioModelPortfolioId,
        PathValues.PORTFOLIO_GROUPS: PortfolioGroups,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID: PortfolioGroupsPortfolioGroupId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_ACCOUNTS: PortfolioGroupsPortfolioGroupIdAccounts,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_BALANCES: PortfolioGroupsPortfolioGroupIdBalances,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES: PortfolioGroupsPortfolioGroupIdCalculatedtrades,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_TRADE_ID: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_IMPACT: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpact,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_MODIFY_TRADE_ID: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_CALCULATEDTRADES_CALCULATED_TRADE_ID_PLACE_ORDERS: PortfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrders,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS: PortfolioGroupsPortfolioGroupIdExcludedassets,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_EXCLUDEDASSETS_SYMBOL_ID: PortfolioGroupsPortfolioGroupIdExcludedassetsSymbolId,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_IMPORT: PortfolioGroupsPortfolioGroupIdImport,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_INFO: PortfolioGroupsPortfolioGroupIdInfo,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_POSITIONS: PortfolioGroupsPortfolioGroupIdPositions,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SETTINGS: PortfolioGroupsPortfolioGroupIdSettings,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_SYMBOLS: PortfolioGroupsPortfolioGroupIdSymbols,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS: PortfolioGroupsPortfolioGroupIdTargets,
        PathValues.PORTFOLIO_GROUPS_PORTFOLIO_GROUP_ID_TARGETS_TARGET_ASSET_ID: PortfolioGroupsPortfolioGroupIdTargetsTargetAssetId,
        PathValues.SYMBOLS: Symbols,
        PathValues.SYMBOLS_TICKER: SymbolsTicker,
        PathValues.TRADE_PLACE: TradePlace,
        PathValues.TRADE_IMPACT: TradeImpact,
        PathValues.TRADE_TRADE_ID: TradeTradeId,
        PathValues.TRADE_OCO: TradeOco,
        PathValues.ACTIVITIES: Activities,
        PathValues.PERFORMANCE_CUSTOM: PerformanceCustom,
    }
)
