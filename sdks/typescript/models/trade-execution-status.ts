/* tslint:disable */
/* eslint-disable */
/**
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This file is auto generated by Konfig (https://konfigthis.com).
 * https://konfigthis.com
 * Do not edit the class manually.
 */

// May contain unused imports in some cases
// @ts-ignore
import { BrokerageSymbol } from './brokerage-symbol';
// May contain unused imports in some cases
// @ts-ignore
import { Trade } from './trade';
// May contain unused imports in some cases
// @ts-ignore
import { UniversalSymbol } from './universal-symbol';

/**
 * Execution status of a trade
 * @export
 * @interface TradeExecutionStatus
 */
export interface TradeExecutionStatus {
    [key: string]: any;

    /**
     * 
     * @type {BrokerageSymbol}
     * @memberof TradeExecutionStatus
     */
    'symbol'?: BrokerageSymbol;
    /**
     * 
     * @type {UniversalSymbol}
     * @memberof TradeExecutionStatus
     */
    'universal_symbol'?: UniversalSymbol;
    /**
     * 
     * @type {Trade}
     * @memberof TradeExecutionStatus
     */
    'trade'?: Trade;
    /**
     * Execution state of a trade
     * @type {string}
     * @memberof TradeExecutionStatus
     */
    'state'?: TradeExecutionStatusStateEnum;
    /**
     * Number of filled units
     * @type {number}
     * @memberof TradeExecutionStatus
     */
    'filled_units'?: number;
    /**
     * Action of executed trade
     * @type {string}
     * @memberof TradeExecutionStatus
     */
    'action'?: TradeExecutionStatusActionEnum;
    /**
     * Price of execution
     * @type {number}
     * @memberof TradeExecutionStatus
     */
    'price'?: number;
    /**
     * Fees paid from executing trade
     * @type {number}
     * @memberof TradeExecutionStatus
     */
    'commissions'?: number;
    /**
     * Other misc. data
     * @type {{ [key: string]: any; }}
     * @memberof TradeExecutionStatus
     */
    'meta'?: { [key: string]: any; };
}

export const TradeExecutionStatusStateEnum = {
    Executed: 'Executed',
    Canceled: 'Canceled',
    Rejected: 'Rejected',
    Failed: 'Failed',
    NotExecuted: 'Not Executed'
} as const;

export type TradeExecutionStatusStateEnum = typeof TradeExecutionStatusStateEnum[keyof typeof TradeExecutionStatusStateEnum];
export const TradeExecutionStatusActionEnum = {
    Buy: 'BUY',
    Sell: 'SELL'
} as const;

export type TradeExecutionStatusActionEnum = typeof TradeExecutionStatusActionEnum[keyof typeof TradeExecutionStatusActionEnum];


