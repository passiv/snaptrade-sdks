/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { OrderTypeStrict } from './order-type-strict';
import { TimeInForceStrict } from './time-in-force-strict';

/**
 * 
 * @export
 * @interface OptionsPlaceOptionStrategyRequest
 */
export interface OptionsPlaceOptionStrategyRequest {
    /**
     * Order Type
     * @type {OrderTypeStrict}
     * @memberof OptionsPlaceOptionStrategyRequest
     */
    'order_type': OrderTypeStrict;
    /**
     * Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled 
     * @type {TimeInForceStrict}
     * @memberof OptionsPlaceOptionStrategyRequest
     */
    'time_in_force': TimeInForceStrict;
    /**
     * Trade Price if limit or stop limit order
     * @type {number}
     * @memberof OptionsPlaceOptionStrategyRequest
     */
    'price'?: number | null;
}

