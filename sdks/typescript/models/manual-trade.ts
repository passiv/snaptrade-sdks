/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ActionStrict } from './action-strict';
import { ManualTradeSymbol } from './manual-trade-symbol';
import { OrderTypeStrict } from './order-type-strict';

/**
 * A manual trade object
 * @export
 * @interface ManualTrade
 */
export interface ManualTrade {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof ManualTrade
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof ManualTrade
     */
    'account'?: string;
    /**
     * Order Type
     * @type {OrderTypeStrict}
     * @memberof ManualTrade
     */
    'order_type'?: OrderTypeStrict;
    /**
     * Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date 
     * @type {string}
     * @memberof ManualTrade
     */
    'time_in_force'?: string;
    /**
     * 
     * @type {ManualTradeSymbol}
     * @memberof ManualTrade
     */
    'symbol'?: ManualTradeSymbol;
    /**
     * Trade Action
     * @type {ActionStrict}
     * @memberof ManualTrade
     */
    'action'?: ActionStrict;
    /**
     * 
     * @type {number}
     * @memberof ManualTrade
     */
    'units'?: number | null;
    /**
     * Trade Price if limit or stop limit order
     * @type {number}
     * @memberof ManualTrade
     */
    'price'?: number | null;
}

