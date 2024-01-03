/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Action } from './action';
import { ManualTradeSymbol } from './manual-trade-symbol';
import { OrderType } from './order-type';
import { TimeInForce } from './time-in-force';

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
     * 
     * @type {OrderType}
     * @memberof ManualTrade
     */
    'order_type'?: OrderType;
    /**
     * 
     * @type {TimeInForce}
     * @memberof ManualTrade
     */
    'time_in_force'?: TimeInForce;
    /**
     * 
     * @type {ManualTradeSymbol}
     * @memberof ManualTrade
     */
    'symbol'?: ManualTradeSymbol;
    /**
     * 
     * @type {Action}
     * @memberof ManualTrade
     */
    'action'?: Action;
    /**
     * Trade Units. Cannot work with notional value.
     * @type {number}
     * @memberof ManualTrade
     */
    'units'?: number;
    /**
     * Trade Price if limit or stop limit order
     * @type {number}
     * @memberof ManualTrade
     */
    'price'?: number | null;
}

