/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ChildBrokerageOrderIDs } from './child-brokerage-order-ids';

/**
 * 
 * @export
 * @interface AccountOrderRecordChildBrokerageOrderIds
 */
export interface AccountOrderRecordChildBrokerageOrderIds {
    /**
     * The brokerage order ID for the take profit leg of the bracket order
     * @type {string}
     * @memberof AccountOrderRecordChildBrokerageOrderIds
     */
    'take_profit_order_id'?: string;
    /**
     * The brokerage order ID for the stop loss leg of the bracket order
     * @type {string}
     * @memberof AccountOrderRecordChildBrokerageOrderIds
     */
    'stop_loss_order_id'?: string;
}

