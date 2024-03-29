/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


/**
 * 
 * @export
 * @interface SessionEvent
 */
export interface SessionEvent {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof SessionEvent
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof SessionEvent
     */
    'session_event_type'?: SessionEventSessionEventTypeEnum;
    /**
     * 
     * @type {string}
     * @memberof SessionEvent
     */
    'session_id'?: string;
    /**
     * SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it\'s unique to a user
     * @type {string}
     * @memberof SessionEvent
     */
    'user_id'?: string;
    /**
     * Time
     * @type {string}
     * @memberof SessionEvent
     */
    'created_date'?: string;
    /**
     * 
     * @type {number}
     * @memberof SessionEvent
     */
    'brokerage_status_code'?: number | null;
    /**
     * 
     * @type {string}
     * @memberof SessionEvent
     */
    'brokerage_authorization_id'?: string;
}

type SessionEventSessionEventTypeEnum = 'CONNECTION_FAILED' | 'DISCLAIMER_ACCEPTED' | 'BROKERAGE_CONNECTION_INITIATED' | 'BROKERAGE_AUTHENTICATION' | 'MFA_AUTHORIZATION' | 'CONNECTION_SUCCESSFUL' | 'PARTNER_REDIRECT'


