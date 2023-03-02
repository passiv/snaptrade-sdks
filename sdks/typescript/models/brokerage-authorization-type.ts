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


/**
 * 
 * @export
 * @interface BrokerageAuthorizationType
 */
export interface BrokerageAuthorizationType {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof BrokerageAuthorizationType
     */
    'type'?: BrokerageAuthorizationTypeTypeEnum;
}

export const BrokerageAuthorizationTypeTypeEnum = {
    Read: 'read',
    Trade: 'trade'
} as const;

export type BrokerageAuthorizationTypeTypeEnum = typeof BrokerageAuthorizationTypeTypeEnum[keyof typeof BrokerageAuthorizationTypeTypeEnum];

