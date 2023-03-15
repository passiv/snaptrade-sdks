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

import globalAxios, { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import { Configuration } from '../configuration';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setOAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction } from '../common';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../base';
// @ts-ignore
import { APIDisclaimerAcceptRequest } from '../models';
// @ts-ignore
import { SnapTradeAPIDisclaimerAcceptStatus } from '../models';
import { paginate } from "../pagination/paginate";
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * ApiDisclaimerApi - axios parameter creator
 * @export
 */
export const ApiDisclaimerApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * 
         * @summary Accept or Reject SnapTrade disclaimer agreement
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {APIDisclaimerAcceptRequest} aPIDisclaimerAcceptRequest 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        accept: async (userId: string, userSecret: string, aPIDisclaimerAcceptRequest: APIDisclaimerAcceptRequest, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('accept', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('accept', 'userSecret', userSecret)
            // verify required parameter 'aPIDisclaimerAcceptRequest' is not null or undefined
            assertParamExists('accept', 'aPIDisclaimerAcceptRequest', aPIDisclaimerAcceptRequest)
            const localVarPath = `/snapTrade/acceptDisclaimer`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication PartnerClientId required
            await setApiKeyToObject(localVarQueryParameter, "clientId", configuration)

            // authentication PartnerSignature required
            await setApiKeyToObject(localVarHeaderParameter, "Signature", configuration)

            // authentication PartnerTimestamp required
            await setApiKeyToObject(localVarQueryParameter, "timestamp", configuration)

            if (userId !== undefined) {
                localVarQueryParameter['userId'] = userId;
            }

            if (userSecret !== undefined) {
                localVarQueryParameter['userSecret'] = userSecret;
            }


    
            localVarHeaderParameter['Content-Type'] = 'application/json';

            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(aPIDisclaimerAcceptRequest, localVarRequestOptions, configuration)

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
 * ApiDisclaimerApi - functional programming interface
 * @export
 */
export const ApiDisclaimerApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = ApiDisclaimerApiAxiosParamCreator(configuration)
    return {
        /**
         * 
         * @summary Accept or Reject SnapTrade disclaimer agreement
         * @param {ApiDisclaimerApiAcceptRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async accept(requestParameters: ApiDisclaimerApiAcceptRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<SnapTradeAPIDisclaimerAcceptStatus>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.accept(requestParameters.userId, requestParameters.userSecret, requestParameters, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * ApiDisclaimerApi - factory interface
 * @export
 */
export const ApiDisclaimerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = ApiDisclaimerApiFp(configuration)
    return {
        /**
         * 
         * @summary Accept or Reject SnapTrade disclaimer agreement
         * @param {ApiDisclaimerApiAcceptRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        accept(requestParameters: ApiDisclaimerApiAcceptRequest, options?: AxiosRequestConfig): AxiosPromise<SnapTradeAPIDisclaimerAcceptStatus> {
            return localVarFp.accept(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for accept operation in ApiDisclaimerApi.
 * @export
 * @interface ApiDisclaimerApiAcceptRequest
 */
export type ApiDisclaimerApiAcceptRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof ApiDisclaimerApiAccept
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof ApiDisclaimerApiAccept
    */
    readonly userSecret: string
    
} & APIDisclaimerAcceptRequest

/**
 * ApiDisclaimerApi - object-oriented interface
 * @export
 * @class ApiDisclaimerApi
 * @extends {BaseAPI}
 */
export class ApiDisclaimerApi extends BaseAPI {
    /**
     * 
     * @summary Accept or Reject SnapTrade disclaimer agreement
     * @param {ApiDisclaimerApiAcceptRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof ApiDisclaimerApi
     */
    public accept(requestParameters: ApiDisclaimerApiAcceptRequest, options?: AxiosRequestConfig) {
        return ApiDisclaimerApiFp(this.configuration).accept(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
