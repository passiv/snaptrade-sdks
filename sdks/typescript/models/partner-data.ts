/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Brokerage } from './brokerage';

/**
 * Configurations for your SnapTrade Client ID, including allowed brokerages and data access.
 * @export
 * @interface PartnerData
 */
export interface PartnerData {
    [key: string]: any;

    /**
     * A short, unique identifier for your company or product.
     * @type {string}
     * @memberof PartnerData
     */
    'slug'?: string;
    /**
     * Your company or product name.
     * @type {string}
     * @memberof PartnerData
     */
    'name'?: string;
    /**
     * URL to your company or product logo.
     * @type {string}
     * @memberof PartnerData
     */
    'logo_url'?: string;
    /**
     * Brokerages that can be accessed by your Client ID.
     * @type {Array<Brokerage>}
     * @memberof PartnerData
     */
    'allowed_brokerages'?: Array<Brokerage>;
    /**
     * Whether trading is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_trades'?: boolean;
    /**
     * Whether holdings data is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_holdings'?: boolean;
    /**
     * Whether account historical transactions is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_account_history'?: boolean;
    /**
     * Whether reference data is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_reference_data'?: boolean;
    /**
     * Whether portfolio management is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_portfolio_management'?: boolean;
    /**
     * Whether recent order history is enabled for your SnapTrade Client ID.
     * @type {boolean}
     * @memberof PartnerData
     */
    'can_access_orders'?: boolean;
    /**
     * URI to redirect user back to after user is done adding brokerage connections.
     * @type {string}
     * @memberof PartnerData
     */
    'redirect_uri'?: string;
    /**
     * Shows if pin is required by users to access connection page. This field has been deprecated.
     * @type {boolean}
     * @memberof PartnerData
     * @deprecated
     */
    'pin_required'?: boolean;
}

