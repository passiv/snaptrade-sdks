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
import { UserErrorLog } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * ErrorLogsApi - axios parameter creator
 * @export
 */
export const ErrorLogsApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * 
         * @summary Retrieve error logs on behalf of your SnapTrade users
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        listUserErrors: async (userId: string, userSecret: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('listUserErrors', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('listUserErrors', 'userSecret', userSecret)
            const localVarPath = `/snapTrade/listUserErrors`;
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
                pathTemplate: '/snapTrade/listUserErrors',
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
 * ErrorLogsApi - functional programming interface
 * @export
 */
export const ErrorLogsApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = ErrorLogsApiAxiosParamCreator(configuration)
    return {
        /**
         * 
         * @summary Retrieve error logs on behalf of your SnapTrade users
         * @param {ErrorLogsApiListUserErrorsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async listUserErrors(requestParameters: ErrorLogsApiListUserErrorsRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Array<UserErrorLog>>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.listUserErrors(requestParameters.userId, requestParameters.userSecret, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * ErrorLogsApi - factory interface
 * @export
 */
export const ErrorLogsApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = ErrorLogsApiFp(configuration)
    return {
        /**
         * 
         * @summary Retrieve error logs on behalf of your SnapTrade users
         * @param {ErrorLogsApiListUserErrorsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        listUserErrors(requestParameters: ErrorLogsApiListUserErrorsRequest, options?: AxiosRequestConfig): AxiosPromise<Array<UserErrorLog>> {
            return localVarFp.listUserErrors(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for listUserErrors operation in ErrorLogsApi.
 * @export
 * @interface ErrorLogsApiListUserErrorsRequest
 */
export type ErrorLogsApiListUserErrorsRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof ErrorLogsApiListUserErrors
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof ErrorLogsApiListUserErrors
    */
    readonly userSecret: string
    
}

/**
 * ErrorLogsApiGenerated - object-oriented interface
 * @export
 * @class ErrorLogsApiGenerated
 * @extends {BaseAPI}
 */
export class ErrorLogsApiGenerated extends BaseAPI {
    /**
     * 
     * @summary Retrieve error logs on behalf of your SnapTrade users
     * @param {ErrorLogsApiListUserErrorsRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof ErrorLogsApiGenerated
     */
    public listUserErrors(requestParameters: ErrorLogsApiListUserErrorsRequest, options?: AxiosRequestConfig) {
        return ErrorLogsApiFp(this.configuration).listUserErrors(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
