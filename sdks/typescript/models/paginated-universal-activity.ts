/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { AccountUniversalActivity } from './account-universal-activity';
import { PaginationDetails } from './pagination-details';

/**
 * A paginated list of UniversalActivity objects.
 * @export
 * @interface PaginatedUniversalActivity
 */
export interface PaginatedUniversalActivity {
    [key: string]: any;

    /**
     * 
     * @type {Array<AccountUniversalActivity>}
     * @memberof PaginatedUniversalActivity
     */
    'data'?: Array<AccountUniversalActivity>;
    /**
     * 
     * @type {PaginationDetails}
     * @memberof PaginatedUniversalActivity
     */
    'pagination'?: PaginationDetails;
}

