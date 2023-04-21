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
import { Balance } from './balance';
// May contain unused imports in some cases
// @ts-ignore
import { Position } from './position';
// May contain unused imports in some cases
// @ts-ignore
import { SnapTradeHoldingsAccountAccountId } from './snap-trade-holdings-account-account-id';
// May contain unused imports in some cases
// @ts-ignore
import { SnapTradeHoldingsTotalValue } from './snap-trade-holdings-total-value';

/**
 * Account Holdings with Account ID
 * @export
 * @interface AccountHoldingsAccount
 */
export interface AccountHoldingsAccount {
    [key: string]: any;

    /**
     * 
     * @type {SnapTradeHoldingsAccountAccountId}
     * @memberof AccountHoldingsAccount
     */
    'account'?: SnapTradeHoldingsAccountAccountId;
    /**
     * 
     * @type {Array<Balance>}
     * @memberof AccountHoldingsAccount
     */
    'balances'?: Array<Balance>;
    /**
     * 
     * @type {Array<Position>}
     * @memberof AccountHoldingsAccount
     */
    'positions'?: Array<Position>;
    /**
     * 
     * @type {SnapTradeHoldingsTotalValue}
     * @memberof AccountHoldingsAccount
     */
    'total_value'?: SnapTradeHoldingsTotalValue;
}
