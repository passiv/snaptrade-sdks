/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { OptionBrokerageSymbol } from './option-brokerage-symbol';
import { OptionsPositionCurrency } from './options-position-currency';

/**
 * Describes a single option position in an account.
 * @export
 * @interface OptionsPosition
 */
export interface OptionsPosition {
    [key: string]: any;

    /**
     * 
     * @type {OptionBrokerageSymbol}
     * @memberof OptionsPosition
     */
    'symbol'?: OptionBrokerageSymbol;
    /**
     * Last known market price _per share_ of the option contract. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.
     * @type {number}
     * @memberof OptionsPosition
     */
    'price'?: number | null;
    /**
     * The number of contracts for this option position. A positive number indicates a long position, while a negative number indicates a short position.
     * @type {number}
     * @memberof OptionsPosition
     */
    'units'?: number;
    /**
     * Cost basis _per contract_ of this option position. To get the cost basis _per share_, divide this value by the number of shares per contract (usually 100).
     * @type {number}
     * @memberof OptionsPosition
     */
    'average_purchase_price'?: number | null;
    /**
     * 
     * @type {OptionsPositionCurrency}
     * @memberof OptionsPosition
     * @deprecated
     */
    'currency'?: OptionsPositionCurrency | null;
}

