/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ActionStrictWithOptions } from './action-strict-with-options';
import { OrderTypeStrict } from './order-type-strict';
import { StopLoss } from './stop-loss';
import { TakeProfit } from './take-profit';
import { TimeInForceStrict } from './time-in-force-strict';
import { TradingInstrument } from './trading-instrument';

/**
 * Inputs for placing an order with the brokerage.
 * @export
 * @interface ManualTradeFormBracket
 */
export interface ManualTradeFormBracket {
    /**
     * The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.
     * @type {ActionStrictWithOptions}
     * @memberof ManualTradeFormBracket
     */
    'action': ActionStrictWithOptions;
    /**
     * The security\'s trading ticker symbol.
     * @type {string}
     * @memberof ManualTradeFormBracket
     */
    'symbol'?: string;
    /**
     * 
     * @type {TradingInstrument}
     * @memberof ManualTradeFormBracket
     */
    'instrument': TradingInstrument;
    /**
     * The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
     * @type {OrderTypeStrict}
     * @memberof ManualTradeFormBracket
     */
    'order_type': OrderTypeStrict;
    /**
     * The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
     * @type {TimeInForceStrict}
     * @memberof ManualTradeFormBracket
     */
    'time_in_force': TimeInForceStrict;
    /**
     * The limit price for `Limit` and `StopLimit` orders.
     * @type {number}
     * @memberof ManualTradeFormBracket
     */
    'price'?: number | null;
    /**
     * The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
     * @type {number}
     * @memberof ManualTradeFormBracket
     */
    'stop'?: number | null;
    /**
     * Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
     * @type {number}
     * @memberof ManualTradeFormBracket
     */
    'units'?: number;
    /**
     * 
     * @type {StopLoss}
     * @memberof ManualTradeFormBracket
     */
    'stop_loss': StopLoss;
    /**
     * 
     * @type {TakeProfit}
     * @memberof ManualTradeFormBracket
     */
    'take_profit': TakeProfit;
}

