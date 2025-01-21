/* tslint:disable */
/* eslint-disable */
/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/

import globalAxios, { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import { Configuration } from '../configuration';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction, isBrowser } from '../common';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../base';
// @ts-ignore
import { PerformanceCustom } from '../models';
// @ts-ignore
import { UniversalActivity } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * TransactionsAndReportingApi - axios parameter creator
 * @export
 */
export const TransactionsAndReportingApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Returns all historical transactions for the specified user and filtering criteria. It\'s recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There\'s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
         * @summary Get transaction history for a user
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {string | Date} [startDate] The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on &#x60;trade_date&#x60;.
         * @param {string | Date} [endDate] The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on &#x60;trade_date&#x60;.
         * @param {string} [accounts] Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The &#x60;brokerageAuthorizations&#x60; parameter takes precedence over this parameter.
         * @param {string} [brokerageAuthorizations] Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the &#x60;accounts&#x60; parameter.
         * @param {string} [type] Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event.   - &#x60;TRANSFER&#x60; - Transfer of assets from one account to another 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getActivities: async (userId: string, userSecret: string, startDate?: string | Date, endDate?: string | Date, accounts?: string, brokerageAuthorizations?: string, type?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('getActivities', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('getActivities', 'userSecret', userSecret)
            const localVarPath = `/activities`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication PartnerClientId required
            await setApiKeyToObject({object: localVarQueryParameter, key: "clientId", keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "Signature", keyParamName: "signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, key: "timestamp", keyParamName: "timestamp", configuration})
            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString().substr(0,10) :
                    startDate;
            }

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString().substr(0,10) :
                    endDate;
            }

            if (accounts !== undefined) {
                localVarQueryParameter['accounts'] = accounts;
            }

            if (brokerageAuthorizations !== undefined) {
                localVarQueryParameter['brokerageAuthorizations'] = brokerageAuthorizations;
            }

            if (type !== undefined) {
                localVarQueryParameter['type'] = type;
            }

            if (userId !== undefined) {
                localVarQueryParameter['userId'] = userId;
            }

            if (userSecret !== undefined) {
                localVarQueryParameter['userSecret'] = userSecret;
            }


    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/activities',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
         * @summary Get performance information for a specific timeframe
         * @param {string | Date} startDate 
         * @param {string | Date} endDate 
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {string} [accounts] Optional comma separated list of account IDs used to filter the request on specific accounts
         * @param {boolean} [detailed] Optional, increases frequency of data points for the total value and contribution charts if set to true
         * @param {string} [frequency] Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
         * @param {*} [options] Override http request option.
         * @deprecated
         * @throws {RequiredError}
         */
        getReportingCustomRange: async (startDate: string | Date, endDate: string | Date, userId: string, userSecret: string, accounts?: string, detailed?: boolean, frequency?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'startDate' is not null or undefined
            assertParamExists('getReportingCustomRange', 'startDate', startDate)
            // verify required parameter 'endDate' is not null or undefined
            assertParamExists('getReportingCustomRange', 'endDate', endDate)
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('getReportingCustomRange', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('getReportingCustomRange', 'userSecret', userSecret)
            const localVarPath = `/performance/custom`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication PartnerClientId required
            await setApiKeyToObject({object: localVarQueryParameter, key: "clientId", keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "Signature", keyParamName: "signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, key: "timestamp", keyParamName: "timestamp", configuration})
            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString().substr(0,10) :
                    startDate;
            }

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString().substr(0,10) :
                    endDate;
            }

            if (accounts !== undefined) {
                localVarQueryParameter['accounts'] = accounts;
            }

            if (detailed !== undefined) {
                localVarQueryParameter['detailed'] = detailed;
            }

            if (frequency !== undefined) {
                localVarQueryParameter['frequency'] = frequency;
            }

            if (userId !== undefined) {
                localVarQueryParameter['userId'] = userId;
            }

            if (userSecret !== undefined) {
                localVarQueryParameter['userSecret'] = userSecret;
            }


    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/performance/custom',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * TransactionsAndReportingApi - functional programming interface
 * @export
 */
export const TransactionsAndReportingApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = TransactionsAndReportingApiAxiosParamCreator(configuration)
    return {
        /**
         * Returns all historical transactions for the specified user and filtering criteria. It\'s recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There\'s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
         * @summary Get transaction history for a user
         * @param {TransactionsAndReportingApiGetActivitiesRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getActivities(requestParameters: TransactionsAndReportingApiGetActivitiesRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Array<UniversalActivity>>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getActivities(requestParameters.userId, requestParameters.userSecret, requestParameters.startDate, requestParameters.endDate, requestParameters.accounts, requestParameters.brokerageAuthorizations, requestParameters.type, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
         * @summary Get performance information for a specific timeframe
         * @param {TransactionsAndReportingApiGetReportingCustomRangeRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @deprecated
         * @throws {RequiredError}
         */
        async getReportingCustomRange(requestParameters: TransactionsAndReportingApiGetReportingCustomRangeRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<PerformanceCustom>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getReportingCustomRange(requestParameters.startDate, requestParameters.endDate, requestParameters.userId, requestParameters.userSecret, requestParameters.accounts, requestParameters.detailed, requestParameters.frequency, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * TransactionsAndReportingApi - factory interface
 * @export
 */
export const TransactionsAndReportingApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = TransactionsAndReportingApiFp(configuration)
    return {
        /**
         * Returns all historical transactions for the specified user and filtering criteria. It\'s recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There\'s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
         * @summary Get transaction history for a user
         * @param {TransactionsAndReportingApiGetActivitiesRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getActivities(requestParameters: TransactionsAndReportingApiGetActivitiesRequest, options?: AxiosRequestConfig): AxiosPromise<Array<UniversalActivity>> {
            return localVarFp.getActivities(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
         * @summary Get performance information for a specific timeframe
         * @param {TransactionsAndReportingApiGetReportingCustomRangeRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @deprecated
         * @throws {RequiredError}
         */
        getReportingCustomRange(requestParameters: TransactionsAndReportingApiGetReportingCustomRangeRequest, options?: AxiosRequestConfig): AxiosPromise<PerformanceCustom> {
            return localVarFp.getReportingCustomRange(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for getActivities operation in TransactionsAndReportingApi.
 * @export
 * @interface TransactionsAndReportingApiGetActivitiesRequest
 */
export type TransactionsAndReportingApiGetActivitiesRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly userSecret: string
    
    /**
    * The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly startDate?: string | Date
    
    /**
    * The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly endDate?: string | Date
    
    /**
    * Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly accounts?: string
    
    /**
    * Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly brokerageAuthorizations?: string
    
    /**
    * Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly type?: string
    
}

/**
 * Request parameters for getReportingCustomRange operation in TransactionsAndReportingApi.
 * @export
 * @interface TransactionsAndReportingApiGetReportingCustomRangeRequest
 */
export type TransactionsAndReportingApiGetReportingCustomRangeRequest = {
    
    /**
    * 
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly startDate: string | Date
    
    /**
    * 
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly endDate: string | Date
    
    /**
    * 
    * @type {string}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly userSecret: string
    
    /**
    * Optional comma separated list of account IDs used to filter the request on specific accounts
    * @type {string}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly accounts?: string
    
    /**
    * Optional, increases frequency of data points for the total value and contribution charts if set to true
    * @type {boolean}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly detailed?: boolean
    
    /**
    * Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    * @type {string}
    * @memberof TransactionsAndReportingApiGetReportingCustomRange
    */
    readonly frequency?: string
    
}

/**
 * TransactionsAndReportingApiGenerated - object-oriented interface
 * @export
 * @class TransactionsAndReportingApiGenerated
 * @extends {BaseAPI}
 */
export class TransactionsAndReportingApiGenerated extends BaseAPI {
    /**
     * Returns all historical transactions for the specified user and filtering criteria. It\'s recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There\'s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
     * @summary Get transaction history for a user
     * @param {TransactionsAndReportingApiGetActivitiesRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof TransactionsAndReportingApiGenerated
     */
    public getActivities(requestParameters: TransactionsAndReportingApiGetActivitiesRequest, options?: AxiosRequestConfig) {
        return TransactionsAndReportingApiFp(this.configuration).getActivities(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
     * @summary Get performance information for a specific timeframe
     * @param {TransactionsAndReportingApiGetReportingCustomRangeRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @deprecated
     * @throws {RequiredError}
     * @memberof TransactionsAndReportingApiGenerated
     */
    public getReportingCustomRange(requestParameters: TransactionsAndReportingApiGetReportingCustomRangeRequest, options?: AxiosRequestConfig) {
        return TransactionsAndReportingApiFp(this.configuration).getReportingCustomRange(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
