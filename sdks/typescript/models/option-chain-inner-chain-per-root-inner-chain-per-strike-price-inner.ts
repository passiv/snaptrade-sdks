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
 * @interface OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
 */
export interface OptionChainInnerChainPerRootInnerChainPerStrikePriceInner {
    [key: string]: any;

    /**
     * 
     * @type {number}
     * @memberof OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
     */
    'strikePrice'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
     */
    'callSymbolId'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
     */
    'putSymbolId'?: number | null;
}

