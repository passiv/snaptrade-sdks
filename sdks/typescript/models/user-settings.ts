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
 * Do not edit the class manually.
 */

// May contain unused imports in some cases
// @ts-ignore
import { Currency } from './currency';

/**
 * User account settings
 * @export
 * @interface UserSettings
 */
export interface UserSettings {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof UserSettings
     */
    'email'?: string;
    /**
     * 
     * @type {string}
     * @memberof UserSettings
     */
    'name'?: string;
    /**
     * 
     * @type {boolean}
     * @memberof UserSettings
     */
    'receive_cash_notification'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof UserSettings
     */
    'receive_drift_notification'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof UserSettings
     */
    'user_trial_activated'?: boolean;
    /**
     * 
     * @type {string}
     * @memberof UserSettings
     */
    'activated_trial_date'?: string;
    /**
     * 
     * @type {boolean}
     * @memberof UserSettings
     */
    'demo'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof UserSettings
     */
    'api_enabled'?: boolean;
    /**
     * 
     * @type {number}
     * @memberof UserSettings
     */
    'drift_threshold'?: number;
    /**
     * 
     * @type {Currency}
     * @memberof UserSettings
     */
    'preferred_currency'?: Currency;
}

