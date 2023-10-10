# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from snaptrade_client.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    API_STATUS = "API Status"
    AUTHENTICATION = "Authentication"
    ACCOUNT_INFORMATION = "Account Information"
    API_DISCLAIMER = "API Disclaimer"
    CONNECTIONS = "Connections"
    TRANSACTIONS_AND_REPORTING = "Transactions And Reporting"
    TRADING = "Trading"
    REFERENCE_DATA = "Reference Data"
    ERROR_LOGS = "Error Logs"
    OPTIONS = "Options"
