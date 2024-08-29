/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { OptionsSymbol } from './options-symbol';
import { UnderlyingSymbol } from './underlying-symbol';

/**
 * Contains information about the option contract that the order is for. This field is only present for option orders. For stock/ETF/crypto/mutual fund orders, this field will be null and the `universal_symbol` field will be populated.
 * @export
 * @interface AccountOrderRecordOptionSymbol
 */
export interface AccountOrderRecordOptionSymbol {
    /**
     * Unique identifier for the option symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
     * @type {string}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'id': string;
    /**
     * The [OCC symbol](https://en.wikipedia.org/wiki/Option_symbol) for the option.
     * @type {string}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'ticker': string;
    /**
     * The type of option. Either \"CALL\" or \"PUT\".
     * @type {string}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'option_type': AccountOrderRecordOptionSymbolOptionTypeEnum;
    /**
     * The option strike price.
     * @type {number}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'strike_price': number;
    /**
     * The option expiration date.
     * @type {string}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'expiration_date': string;
    /**
     * Whether the option is a mini option. Mini options have 10 underlying shares per contract instead of the standard 100.
     * @type {boolean}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'is_mini_option'?: boolean;
    /**
     * 
     * @type {UnderlyingSymbol}
     * @memberof AccountOrderRecordOptionSymbol
     */
    'underlying_symbol': UnderlyingSymbol;
}

type AccountOrderRecordOptionSymbolOptionTypeEnum = 'CALL' | 'PUT'

