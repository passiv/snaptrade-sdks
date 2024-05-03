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
import { AuthenticationLoginSnapTradeUser200Response } from '../models';
// @ts-ignore
import { DeleteUserResponse } from '../models';
// @ts-ignore
import { EncryptedResponse } from '../models';
// @ts-ignore
import { Model400FailedRequestResponse } from '../models';
// @ts-ignore
import { Model401FailedRequestResponse } from '../models';
// @ts-ignore
import { Model403FailedRequestResponse } from '../models';
// @ts-ignore
import { Model404FailedRequestResponse } from '../models';
// @ts-ignore
import { Model500UnexpectedExceptionResponse } from '../models';
// @ts-ignore
import { SnapTradeLoginUserRequestBody } from '../models';
// @ts-ignore
import { SnapTradeRegisterUserRequestBody } from '../models';
// @ts-ignore
import { UserIDandSecret } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * AuthenticationApi - axios parameter creator
 * @export
 */
export const AuthenticationApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Deletes a user you\'ve registered over the SnapTrade API, and any data associated with them or their investment accounts.
         * @summary Delete SnapTrade user
         * @param {string} userId 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteSnapTradeUser: async (userId: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('deleteSnapTradeUser', 'userId', userId)
            const localVarPath = `/snapTrade/deleteUser`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'DELETE', ...baseOptions, ...options};
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


    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/snapTrade/deleteUser',
                httpMethod: 'DELETE'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * This API is available to ClientIDs which have opted to use encrypted JWTs (JSON Web Tokens) instead of standard SnapTrade signature verification. 
         * @summary Generate encrypted JWT token
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getUserJWT: async (userId: string, userSecret: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('getUserJWT', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('getUserJWT', 'userSecret', userSecret)
            const localVarPath = `/snapTrade/encryptedJWT`;
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
                pathTemplate: '/snapTrade/encryptedJWT',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns a list of users you\'ve registered over the SnapTrade API.
         * @summary List SnapTrade users
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        listSnapTradeUsers: async (options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            const localVarPath = `/snapTrade/listUsers`;
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

    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/snapTrade/listUsers',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.
         * @summary Login user & generate connection link
         * @param {string} userId 
         * @param {string} userSecret 
         * @param {SnapTradeLoginUserRequestBody} [snapTradeLoginUserRequestBody] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        loginSnapTradeUser: async (userId: string, userSecret: string, snapTradeLoginUserRequestBody?: SnapTradeLoginUserRequestBody, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userId' is not null or undefined
            assertParamExists('loginSnapTradeUser', 'userId', userId)
            // verify required parameter 'userSecret' is not null or undefined
            assertParamExists('loginSnapTradeUser', 'userSecret', userSecret)
            const localVarPath = `/snapTrade/login`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
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


    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: snapTradeLoginUserRequestBody,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/snapTrade/login',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(snapTradeLoginUserRequestBody, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Registers a new SnapTrade user under your ClientID. Most SnapTrade operations require a user to be passed as a parameter. 
         * @summary Create SnapTrade user
         * @param {SnapTradeRegisterUserRequestBody} snapTradeRegisterUserRequestBody 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        registerSnapTradeUser: async (snapTradeRegisterUserRequestBody: SnapTradeRegisterUserRequestBody, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'snapTradeRegisterUserRequestBody' is not null or undefined
            assertParamExists('registerSnapTradeUser', 'snapTradeRegisterUserRequestBody', snapTradeRegisterUserRequestBody)
            const localVarPath = `/snapTrade/registerUser`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication PartnerClientId required
            await setApiKeyToObject({object: localVarQueryParameter, key: "clientId", keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "Signature", keyParamName: "signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, key: "timestamp", keyParamName: "timestamp", configuration})

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: snapTradeRegisterUserRequestBody,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/snapTrade/registerUser',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(snapTradeRegisterUserRequestBody, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * This API is used to generate a new secret for a SnapTrade user. You might use this if a userSecret is comprimised or lost among other reasons. 
         * @summary Obtain a new user secret for a user
         * @param {UserIDandSecret} userIDandSecret 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        resetSnapTradeUserSecret: async (userIDandSecret: UserIDandSecret, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'userIDandSecret' is not null or undefined
            assertParamExists('resetSnapTradeUserSecret', 'userIDandSecret', userIDandSecret)
            const localVarPath = `/snapTrade/resetUserSecret`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication PartnerClientId required
            await setApiKeyToObject({object: localVarQueryParameter, key: "clientId", keyParamName: "clientId", configuration})
            // authentication PartnerSignature required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "Signature", keyParamName: "signature", configuration })
            // authentication PartnerTimestamp required
            await setApiKeyToObject({object: localVarQueryParameter, key: "timestamp", keyParamName: "timestamp", configuration})

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: userIDandSecret,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/snapTrade/resetUserSecret',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(userIDandSecret, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * AuthenticationApi - functional programming interface
 * @export
 */
export const AuthenticationApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = AuthenticationApiAxiosParamCreator(configuration)
    return {
        /**
         * Deletes a user you\'ve registered over the SnapTrade API, and any data associated with them or their investment accounts.
         * @summary Delete SnapTrade user
         * @param {AuthenticationApiDeleteSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async deleteSnapTradeUser(requestParameters: AuthenticationApiDeleteSnapTradeUserRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<DeleteUserResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.deleteSnapTradeUser(requestParameters.userId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * This API is available to ClientIDs which have opted to use encrypted JWTs (JSON Web Tokens) instead of standard SnapTrade signature verification. 
         * @summary Generate encrypted JWT token
         * @param {AuthenticationApiGetUserJWTRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getUserJWT(requestParameters: AuthenticationApiGetUserJWTRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<EncryptedResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getUserJWT(requestParameters.userId, requestParameters.userSecret, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Returns a list of users you\'ve registered over the SnapTrade API.
         * @summary List SnapTrade users
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async listSnapTradeUsers(options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Array<string>>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.listSnapTradeUsers(options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.
         * @summary Login user & generate connection link
         * @param {AuthenticationApiLoginSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async loginSnapTradeUser(requestParameters: AuthenticationApiLoginSnapTradeUserRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<AuthenticationLoginSnapTradeUser200Response>> {
            const snapTradeLoginUserRequestBody: SnapTradeLoginUserRequestBody = {
                broker: requestParameters.broker,
                immediateRedirect: requestParameters.immediateRedirect,
                customRedirect: requestParameters.customRedirect,
                reconnect: requestParameters.reconnect,
                connectionType: requestParameters.connectionType,
                connectionPortalVersion: requestParameters.connectionPortalVersion
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.loginSnapTradeUser(requestParameters.userId, requestParameters.userSecret, snapTradeLoginUserRequestBody, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Registers a new SnapTrade user under your ClientID. Most SnapTrade operations require a user to be passed as a parameter. 
         * @summary Create SnapTrade user
         * @param {AuthenticationApiRegisterSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async registerSnapTradeUser(requestParameters: AuthenticationApiRegisterSnapTradeUserRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<UserIDandSecret>> {
            const snapTradeRegisterUserRequestBody: SnapTradeRegisterUserRequestBody = {
                userId: requestParameters.userId
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.registerSnapTradeUser(snapTradeRegisterUserRequestBody, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * This API is used to generate a new secret for a SnapTrade user. You might use this if a userSecret is comprimised or lost among other reasons. 
         * @summary Obtain a new user secret for a user
         * @param {AuthenticationApiResetSnapTradeUserSecretRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async resetSnapTradeUserSecret(requestParameters: AuthenticationApiResetSnapTradeUserSecretRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<UserIDandSecret>> {
            const userIDandSecret: UserIDandSecret = {
                userId: requestParameters.userId,
                userSecret: requestParameters.userSecret
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.resetSnapTradeUserSecret(userIDandSecret, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * AuthenticationApi - factory interface
 * @export
 */
export const AuthenticationApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = AuthenticationApiFp(configuration)
    return {
        /**
         * Deletes a user you\'ve registered over the SnapTrade API, and any data associated with them or their investment accounts.
         * @summary Delete SnapTrade user
         * @param {AuthenticationApiDeleteSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteSnapTradeUser(requestParameters: AuthenticationApiDeleteSnapTradeUserRequest, options?: AxiosRequestConfig): AxiosPromise<DeleteUserResponse> {
            return localVarFp.deleteSnapTradeUser(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * This API is available to ClientIDs which have opted to use encrypted JWTs (JSON Web Tokens) instead of standard SnapTrade signature verification. 
         * @summary Generate encrypted JWT token
         * @param {AuthenticationApiGetUserJWTRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getUserJWT(requestParameters: AuthenticationApiGetUserJWTRequest, options?: AxiosRequestConfig): AxiosPromise<EncryptedResponse> {
            return localVarFp.getUserJWT(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns a list of users you\'ve registered over the SnapTrade API.
         * @summary List SnapTrade users
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        listSnapTradeUsers(options?: AxiosRequestConfig): AxiosPromise<Array<string>> {
            return localVarFp.listSnapTradeUsers(options).then((request) => request(axios, basePath));
        },
        /**
         * Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.
         * @summary Login user & generate connection link
         * @param {AuthenticationApiLoginSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        loginSnapTradeUser(requestParameters: AuthenticationApiLoginSnapTradeUserRequest, options?: AxiosRequestConfig): AxiosPromise<AuthenticationLoginSnapTradeUser200Response> {
            return localVarFp.loginSnapTradeUser(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Registers a new SnapTrade user under your ClientID. Most SnapTrade operations require a user to be passed as a parameter. 
         * @summary Create SnapTrade user
         * @param {AuthenticationApiRegisterSnapTradeUserRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        registerSnapTradeUser(requestParameters: AuthenticationApiRegisterSnapTradeUserRequest, options?: AxiosRequestConfig): AxiosPromise<UserIDandSecret> {
            return localVarFp.registerSnapTradeUser(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * This API is used to generate a new secret for a SnapTrade user. You might use this if a userSecret is comprimised or lost among other reasons. 
         * @summary Obtain a new user secret for a user
         * @param {AuthenticationApiResetSnapTradeUserSecretRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        resetSnapTradeUserSecret(requestParameters: AuthenticationApiResetSnapTradeUserSecretRequest, options?: AxiosRequestConfig): AxiosPromise<UserIDandSecret> {
            return localVarFp.resetSnapTradeUserSecret(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for deleteSnapTradeUser operation in AuthenticationApi.
 * @export
 * @interface AuthenticationApiDeleteSnapTradeUserRequest
 */
export type AuthenticationApiDeleteSnapTradeUserRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof AuthenticationApiDeleteSnapTradeUser
    */
    readonly userId: string
    
}

/**
 * Request parameters for getUserJWT operation in AuthenticationApi.
 * @export
 * @interface AuthenticationApiGetUserJWTRequest
 */
export type AuthenticationApiGetUserJWTRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof AuthenticationApiGetUserJWT
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof AuthenticationApiGetUserJWT
    */
    readonly userSecret: string
    
}

/**
 * Request parameters for loginSnapTradeUser operation in AuthenticationApi.
 * @export
 * @interface AuthenticationApiLoginSnapTradeUserRequest
 */
export type AuthenticationApiLoginSnapTradeUserRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof AuthenticationApiLoginSnapTradeUser
    */
    readonly userId: string
    
    /**
    * 
    * @type {string}
    * @memberof AuthenticationApiLoginSnapTradeUser
    */
    readonly userSecret: string
    
} & SnapTradeLoginUserRequestBody

/**
 * Request parameters for registerSnapTradeUser operation in AuthenticationApi.
 * @export
 * @interface AuthenticationApiRegisterSnapTradeUserRequest
 */
export type AuthenticationApiRegisterSnapTradeUserRequest = {
    
} & SnapTradeRegisterUserRequestBody

/**
 * Request parameters for resetSnapTradeUserSecret operation in AuthenticationApi.
 * @export
 * @interface AuthenticationApiResetSnapTradeUserSecretRequest
 */
export type AuthenticationApiResetSnapTradeUserSecretRequest = {
    
} & UserIDandSecret

/**
 * AuthenticationApiGenerated - object-oriented interface
 * @export
 * @class AuthenticationApiGenerated
 * @extends {BaseAPI}
 */
export class AuthenticationApiGenerated extends BaseAPI {
    /**
     * Deletes a user you\'ve registered over the SnapTrade API, and any data associated with them or their investment accounts.
     * @summary Delete SnapTrade user
     * @param {AuthenticationApiDeleteSnapTradeUserRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public deleteSnapTradeUser(requestParameters: AuthenticationApiDeleteSnapTradeUserRequest, options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).deleteSnapTradeUser(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * This API is available to ClientIDs which have opted to use encrypted JWTs (JSON Web Tokens) instead of standard SnapTrade signature verification. 
     * @summary Generate encrypted JWT token
     * @param {AuthenticationApiGetUserJWTRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public getUserJWT(requestParameters: AuthenticationApiGetUserJWTRequest, options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).getUserJWT(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns a list of users you\'ve registered over the SnapTrade API.
     * @summary List SnapTrade users
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public listSnapTradeUsers(options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).listSnapTradeUsers(options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.
     * @summary Login user & generate connection link
     * @param {AuthenticationApiLoginSnapTradeUserRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public loginSnapTradeUser(requestParameters: AuthenticationApiLoginSnapTradeUserRequest, options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).loginSnapTradeUser(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Registers a new SnapTrade user under your ClientID. Most SnapTrade operations require a user to be passed as a parameter. 
     * @summary Create SnapTrade user
     * @param {AuthenticationApiRegisterSnapTradeUserRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public registerSnapTradeUser(requestParameters: AuthenticationApiRegisterSnapTradeUserRequest, options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).registerSnapTradeUser(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * This API is used to generate a new secret for a SnapTrade user. You might use this if a userSecret is comprimised or lost among other reasons. 
     * @summary Obtain a new user secret for a user
     * @param {AuthenticationApiResetSnapTradeUserSecretRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof AuthenticationApiGenerated
     */
    public resetSnapTradeUserSecret(requestParameters: AuthenticationApiResetSnapTradeUserSecretRequest, options?: AxiosRequestConfig) {
        return AuthenticationApiFp(this.configuration).resetSnapTradeUserSecret(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
