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
 * A single connection with a brokerage. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
 * @export
 * @interface BrokerageAuthorization
 */
export interface BrokerageAuthorization {
    [key: string]: any;

    /**
     * Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.
     * @type {string}
     * @memberof BrokerageAuthorization
     */
    'id'?: string;
    /**
     * Timestamp of when the connection was established in SnapTrade.
     * @type {string}
     * @memberof BrokerageAuthorization
     */
    'created_date'?: string;
    /**
     * 
     * @type {Brokerage}
     * @memberof BrokerageAuthorization
     */
    'brokerage'?: Brokerage;
    /**
     * A short, human-readable name for the connection.
     * @type {string}
     * @memberof BrokerageAuthorization
     */
    'name'?: string;
    /**
     * Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are `read` and `trade`.
     * @type {string}
     * @memberof BrokerageAuthorization
     */
    'type'?: string;
    /**
     * Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
     * @type {boolean}
     * @memberof BrokerageAuthorization
     */
    'disabled'?: boolean;
    /**
     * Timestamp of when the connection was disabled in SnapTrade.
     * @type {string}
     * @memberof BrokerageAuthorization
     */
    'disabled_date'?: string | null;
    /**
     * Additional data about the connection. This information is specific to the brokerage and there\'s no standard format for this data. This field is deprecated and subject to removal in a future version.
     * @type {{ [key: string]: any; }}
     * @memberof BrokerageAuthorization
     * @deprecated
     */
    'meta'?: { [key: string]: any; };
    /**
     * Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field.
     * @type {string}
     * @memberof BrokerageAuthorization
     * @deprecated
     */
    'updated_date'?: string;
    /**
     * Whether the connection is eligible for a payout.
     * @type {boolean}
     * @memberof BrokerageAuthorization
     */
    'is_eligible_for_payout'?: boolean;
}

