/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Account } from './account';
import { BrokerageSymbol } from './brokerage-symbol';
import { UniversalSymbol } from './universal-symbol';

/**
 * A trade object
 * @export
 * @interface Trade
 */
export interface Trade {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof Trade
     */
    'id'?: string;
    /**
     * 
     * @type {Account}
     * @memberof Trade
     */
    'account'?: Account;
    /**
     * 
     * @type {BrokerageSymbol}
     * @memberof Trade
     */
    'symbol'?: BrokerageSymbol;
    /**
     * 
     * @type {UniversalSymbol}
     * @memberof Trade
     */
    'universal_symbol'?: UniversalSymbol;
    /**
     * 
     * @type {string}
     * @memberof Trade
     */
    'action'?: TradeActionEnum;
    /**
     * 
     * @type {number}
     * @memberof Trade
     */
    'units'?: number;
    /**
     * 
     * @type {number}
     * @memberof Trade
     */
    'price'?: number;
    /**
     * 
     * @type {number}
     * @memberof Trade
     */
    'sequence'?: number;
}

type TradeActionEnum = 'BUY' | 'SELL'


