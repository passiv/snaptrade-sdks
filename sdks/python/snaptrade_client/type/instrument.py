# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from snaptrade_client.type.adr_instrument import AdrInstrument
from snaptrade_client.type.cef_instrument import CefInstrument
from snaptrade_client.type.crypto_instrument import CryptoInstrument
from snaptrade_client.type.etf_instrument import EtfInstrument
from snaptrade_client.type.future_instrument import FutureInstrument
from snaptrade_client.type.mutual_fund_instrument import MutualFundInstrument
from snaptrade_client.type.option_instrument import OptionInstrument
from snaptrade_client.type.other_instrument import OtherInstrument
from snaptrade_client.type.stock_instrument import StockInstrument

Instrument = typing.Union[StockInstrument,OptionInstrument,CryptoInstrument,FutureInstrument,EtfInstrument,MutualFundInstrument,CefInstrument,AdrInstrument,OtherInstrument]
