# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from snaptrade_client.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    API_STATUS = "API Status"
    API_DISCLAIMER = "API Disclaimer"
    AUTHENTICATION = "Authentication"
    CONNECTIONS = "Connections"
    ACCOUNT_INFORMATION = "Account Information"
    TRANSACTIONS_AND_REPORTING = "Transactions And Reporting"
    TRADING = "Trading"
    PORTFOLIO_MANAGEMENT = "Portfolio Management"
    REFERENCE_DATA = "Reference Data"
    ERROR_LOGS = "Error Logs"
    OPTIONS = "Options"
