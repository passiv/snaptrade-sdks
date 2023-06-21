package com.konfigthis.client;

import java.util.List;
import java.util.Map;

public class ApiClientCustom {

    /**
     * Request hook for before the parameters for before the request is built
     * @param baseUrl
     * @param path
     * @param method
     * @param queryParams
     * @param collectionQueryParams
     * @param body
     * @param headerParams
     * @param cookieParams
     * @param formParams
     * @param authNames
     */
    protected void requestBeforeHook(String baseUrl, String path, String method, List<Pair> queryParams,
                                     List<Pair> collectionQueryParams, Object body, Map<String, String> headerParams,
                                     Map<String, String> cookieParams, Map<String, Object> formParams,
                                     String[] authNames) {
    }

    /**
     * Request hook for before the parameters for after the request is built
     * @param url
     * @param method
     * @param queryParams
     * @param collectionQueryParams
     * @param body
     * @param headerParams
     * @param cookieParams
     * @param formParams
     * @param authNames
     */
    protected void requestAfterHook(String url, String method, List<Pair> queryParams,
                                     List<Pair> collectionQueryParams, Object body, Map<String, String> headerParams,
                                     Map<String, String> cookieParams, Map<String, Object> formParams,
                                     String[] authNames) {
    }
}
