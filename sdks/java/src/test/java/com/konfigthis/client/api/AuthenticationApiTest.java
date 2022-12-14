/*
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.client.api;

import com.konfigthis.client.ApiException;
import com.konfigthis.client.model.DeleteUserResponse;
import com.konfigthis.client.model.EncryptedResponse;
import com.konfigthis.client.model.Model400FailedRequestResponse;
import com.konfigthis.client.model.Model403FailedRequestResponse;
import com.konfigthis.client.model.Model404FailedRequestResponse;
import com.konfigthis.client.model.SnapTradeLoginPost200Response;
import com.konfigthis.client.model.SnapTradeLoginUserRequestBody;
import com.konfigthis.client.model.SnapTradeRegisterUserRequestBody;
import com.konfigthis.client.model.UserIDandSecret;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for AuthenticationApi
 */
@Disabled
public class AuthenticationApiTest {

    private final AuthenticationApi api = new AuthenticationApi();

    /**
     * Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeDeleteUserDeleteTest() throws ApiException {
        String userId = null;
        DeleteUserResponse response = api.snapTradeDeleteUserDelete(userId);
        // TODO: test validations
    }

    /**
     * Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeEncryptedJWTGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        EncryptedResponse response = api.snapTradeEncryptedJWTGet(userId, userSecret);
        // TODO: test validations
    }

    /**
     * Get a list of all SnapTrade users you&#39;ve registered on our platform
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeListUsersGetTest() throws ApiException {
        List<String> response = api.snapTradeListUsersGet();
        // TODO: test validations
    }

    /**
     * Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeLoginPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        SnapTradeLoginUserRequestBody snapTradeLoginUserRequestBody = null;
        SnapTradeLoginPost200Response response = api.snapTradeLoginPost(userId, userSecret, snapTradeLoginUserRequestBody);
        // TODO: test validations
    }

    /**
     * Register user with SnapTrade in order to create secure brokerage authorizations
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeRegisterUserPostTest() throws ApiException {
        SnapTradeRegisterUserRequestBody snapTradeRegisterUserRequestBody = null;
        UserIDandSecret response = api.snapTradeRegisterUserPost(snapTradeRegisterUserRequestBody);
        // TODO: test validations
    }

}
