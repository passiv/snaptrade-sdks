/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Currency } from './currency';

/**
 * 
 * @export
 * @interface PortfolioGroupSettings
 */
export interface PortfolioGroupSettings {
    [key: string]: any;

    /**
     * 
     * @type {boolean}
     * @memberof PortfolioGroupSettings
     */
    'buyOnly'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof PortfolioGroupSettings
     */
    'cash_optimizer'?: boolean;
    /**
     * 
     * @type {string}
     * @memberof PortfolioGroupSettings
     */
    'notifyFrequency'?: string;
    /**
     * 
     * @type {number}
     * @memberof PortfolioGroupSettings
     */
    'driftThreshold'?: number;
    /**
     * 
     * @type {Currency}
     * @memberof PortfolioGroupSettings
     */
    'preferred_currency'?: Currency;
}

