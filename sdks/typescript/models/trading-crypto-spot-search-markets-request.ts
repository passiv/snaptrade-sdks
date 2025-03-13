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
 * @interface TradingCryptoSpotSearchMarketsRequest
 */
export interface TradingCryptoSpotSearchMarketsRequest {
    /**
     * Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
     * @type {string}
     * @memberof TradingCryptoSpotSearchMarketsRequest
     */
    'account_id': string;
    /**
     * The base currency (e.g., \"BTC\" in BTC/USD). Can be a fiat or crypto code.
     * @type {string}
     * @memberof TradingCryptoSpotSearchMarketsRequest
     */
    'base': string;
    /**
     * The quote currency (e.g., \"USD\" in BTC/USD). Can be a fiat or crypto code.
     * @type {string}
     * @memberof TradingCryptoSpotSearchMarketsRequest
     */
    'quote'?: string;
}

