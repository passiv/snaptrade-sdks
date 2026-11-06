# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from snaptrade_client.paths.accounts_account_id_orders_brokerage_order_id import Api

from snaptrade_client.paths import PathValues

path = PathValues.ACCOUNTS_ACCOUNT_ID_ORDERS_BROKERAGE_ORDER_ID