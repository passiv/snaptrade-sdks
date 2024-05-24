/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ActionStrict } from './action-strict';
import { ManualTradeFormNotionalValue } from './manual-trade-form-notional-value';
import { OrderTypeStrict } from './order-type-strict';
import { TimeInForceStrict } from './time-in-force-strict';

/**
 * Manual Trade Form
 * @export
 * @interface ManualTradeForm
 */
export interface ManualTradeForm {
    /**
     * 
     * @type {string}
     * @memberof ManualTradeForm
     */
    'account_id'?: string;
    /**
     * Trade Action
     * @type {ActionStrict}
     * @memberof ManualTradeForm
     */
    'action'?: ActionStrict;
    /**
     * Order Type
     * @type {OrderTypeStrict}
     * @memberof ManualTradeForm
     */
    'order_type'?: OrderTypeStrict;
    /**
     * Trade Price if limit or stop limit order
     * @type {number}
     * @memberof ManualTradeForm
     */
    'price'?: number | null;
    /**
     * Stop Price. If stop loss or stop limit order, the price to trigger the stop
     * @type {number}
     * @memberof ManualTradeForm
     */
    'stop'?: number | null;
    /**
     * Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled 
     * @type {TimeInForceStrict}
     * @memberof ManualTradeForm
     */
    'time_in_force'?: TimeInForceStrict;
    /**
     * 
     * @type {number}
     * @memberof ManualTradeForm
     */
    'units'?: number | null;
    /**
     * 
     * @type {string}
     * @memberof ManualTradeForm
     */
    'universal_symbol_id'?: string;
    /**
     * 
     * @type {ManualTradeFormNotionalValue}
     * @memberof ManualTradeForm
     */
    'notional_value'?: ManualTradeFormNotionalValue | null;
}

