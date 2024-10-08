/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ManualTrade } from './manual-trade';
import { ManualTradeBalance } from './manual-trade-balance';
import { ManualTradeImpact } from './manual-trade-impact';

/**
 * 
 * @export
 * @interface ManualTradeAndImpact
 */
export interface ManualTradeAndImpact {
    [key: string]: any;

    /**
     * 
     * @type {ManualTrade}
     * @memberof ManualTradeAndImpact
     */
    'trade'?: ManualTrade;
    /**
     * List of impacts of the trade on the account. The list always contains one value at the moment.
     * @type {Array<ManualTradeImpact>}
     * @memberof ManualTradeAndImpact
     */
    'trade_impacts'?: Array<ManualTradeImpact>;
    /**
     * 
     * @type {ManualTradeBalance}
     * @memberof ManualTradeAndImpact
     */
    'combined_remaining_balance'?: ManualTradeBalance;
}

