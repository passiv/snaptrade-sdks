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
         * Returns activities (transactions) for a user. Specifying start and end date is highly recommended for better performance
         * @summary Get transaction history for a user
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {string | Date} [startDate] 
         * @param {string | Date} [endDate] 
         * @param {string} [accounts] Optional comma seperated list of account IDs used to filter the request on specific accounts
         * @param {string} [brokerageAuthorizations] Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations
         * @param {string} [type] Optional comma seperated list of types to filter activities by. This is not an exhaustive list, if we fail to match to these types, we will return the raw description from the brokerage. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT
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
            await setApiKeyToObject({object: localVarQueryParameter, keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "Signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, keyParamName: "timestamp", configuration})
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
                configuration
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
         * @param {string} [accounts] Optional comma seperated list of account IDs used to filter the request on specific accounts
         * @param {boolean} [detailed] Optional, increases frequency of data points for the total value and contribution charts if set to true
         * @param {string} [frequency] Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
         * @param {*} [options] Override http request option.
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
            await setApiKeyToObject({object: localVarQueryParameter, keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "Signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, keyParamName: "timestamp", configuration})
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
                configuration
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
         * Returns activities (transactions) for a user. Specifying start and end date is highly recommended for better performance
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
         * Returns activities (transactions) for a user. Specifying start and end date is highly recommended for better performance
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
    * 
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly startDate?: string | Date
    
    /**
    * 
    * @type {string | Date}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly endDate?: string | Date
    
    /**
    * Optional comma seperated list of account IDs used to filter the request on specific accounts
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly accounts?: string
    
    /**
    * Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations
    * @type {string}
    * @memberof TransactionsAndReportingApiGetActivities
    */
    readonly brokerageAuthorizations?: string
    
    /**
    * Optional comma seperated list of types to filter activities by. This is not an exhaustive list, if we fail to match to these types, we will return the raw description from the brokerage. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT
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
    * Optional comma seperated list of account IDs used to filter the request on specific accounts
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
     * Returns activities (transactions) for a user. Specifying start and end date is highly recommended for better performance
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
     * @throws {RequiredError}
     * @memberof TransactionsAndReportingApiGenerated
     */
    public getReportingCustomRange(requestParameters: TransactionsAndReportingApiGetReportingCustomRangeRequest, options?: AxiosRequestConfig) {
        return TransactionsAndReportingApiFp(this.configuration).getReportingCustomRange(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
