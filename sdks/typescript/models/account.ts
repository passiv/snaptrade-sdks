/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { AccountBalance } from './account-balance';
import { AccountSyncStatus } from './account-sync-status';
import { CashRestriction } from './cash-restriction';

/**
 * SnapTradeUser Investment Account
 * @export
 * @interface Account
 */
export interface Account {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'brokerage_authorization'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'portfolio_group'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'name'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'number'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'institution_name'?: string;
    /**
     * 
     * @type {string}
     * @memberof Account
     */
    'created_date'?: string;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof Account
     */
    'meta'?: { [key: string]: any; };
    /**
     * 
     * @type {Array<CashRestriction>}
     * @memberof Account
     */
    'cash_restrictions'?: Array<CashRestriction>;
    /**
     * 
     * @type {AccountSyncStatus}
     * @memberof Account
     */
    'sync_status'?: AccountSyncStatus;
    /**
     * 
     * @type {AccountBalance}
     * @memberof Account
     */
    'balance'?: AccountBalance;
}

