/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Amount } from './amount';

/**
 * Total value of this account (includes cash, equity, fixed income, etc)
 * @export
 * @interface AccountBalanceTotal
 */
export interface AccountBalanceTotal {
    /**
     * 
     * @type {number}
     * @memberof AccountBalanceTotal
     */
    'amount'?: number;
    /**
     * 
     * @type {string}
     * @memberof AccountBalanceTotal
     */
    'currency'?: string;
}

