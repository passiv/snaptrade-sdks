/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { CryptocurrencyPair } from './cryptocurrency-pair';

/**
 * 
 * @export
 * @interface TradingCryptoSpotQuoteRequest
 */
export interface TradingCryptoSpotQuoteRequest {
    /**
     * Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
     * @type {string}
     * @memberof TradingCryptoSpotQuoteRequest
     */
    'account_id': string;
    /**
     * 
     * @type {CryptocurrencyPair}
     * @memberof TradingCryptoSpotQuoteRequest
     */
    'symbol': CryptocurrencyPair;
}

