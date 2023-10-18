/*
 * SnapTrade
 *
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 * Generated by: https://konfigthis.com
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using SnapTrade.Net.Client;
using SnapTrade.Net.Api;
using SnapTrade.Net.Model;

namespace SnapTrade.Net.Test.Api
{
    /// <summary>
    ///  Class for testing AuthenticationApi
    /// </summary>
    public class AuthenticationApiTests : IDisposable
    {
        private Snaptrade client;

        public AuthenticationApiTests()
        {
            client = new Snaptrade();
            client.SetBasePath("http://127.0.0.1:4010");
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test DeleteSnapTradeUser
        /// </summary>
        [Fact]
        public void DeleteSnapTradeUserTest()
        {
            var userId = "userId_example";
            
            try
            {
                // Delete SnapTrade user
                DeleteUserResponse result = client.Authentication.DeleteSnapTradeUser(userId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.DeleteSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }

        /// <summary>
        /// Test GetUserJWT
        /// </summary>
        [Fact]
        public void GetUserJWTTest()
        {
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Generate encrypted JWT token
                EncryptedResponse result = client.Authentication.GetUserJWT(userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.GetUserJWT: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }

        /// <summary>
        /// Test ListSnapTradeUsers
        /// </summary>
        [Fact]
        public void ListSnapTradeUsersTest()
        {
            
            try
            {
                // List SnapTrade users
                List<string> result = client.Authentication.ListSnapTradeUsers();
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.ListSnapTradeUsers: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }

        /// <summary>
        /// Test LoginSnapTradeUser
        /// </summary>
        [Fact]
        public void LoginSnapTradeUserTest()
        {
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var broker = "ALPACA"; // Slug of the brokerage to connect the user to
            var immediateRedirect = true; // When set to True, user will be redirected back to the partner's site instead of the connection portal
            var customRedirect = "https://snaptrade.com"; // URL to redirect the user to after the user connects their brokerage account
            var reconnect = "8b5f262d-4bb9-365d-888a-202bd3b15fa1"; // The UUID of the brokerage connection to be reconnected
            var connectionType = SnapTradeLoginUserRequestBody.ConnectionTypeEnum.Read; // Sets whether the connection should be read or trade
            
            var snapTradeLoginUserRequestBody = new SnapTradeLoginUserRequestBody(
                broker,
                immediateRedirect,
                customRedirect,
                reconnect,
                connectionType
            );
            
            try
            {
                // Login user & generate connection link
                AuthenticationLoginSnapTradeUser200Response result = client.Authentication.LoginSnapTradeUser(userId, userSecret, snapTradeLoginUserRequestBody);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.LoginSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }

        /// <summary>
        /// Test RegisterSnapTradeUser
        /// </summary>
        [Fact]
        public void RegisterSnapTradeUserTest()
        {
            var userId = "snaptrade-user-123"; // SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it's unique to a user
            
            var snapTradeRegisterUserRequestBody = new SnapTradeRegisterUserRequestBody(
                userId
            );
            
            try
            {
                // Create SnapTrade user
                UserIDandSecret result = client.Authentication.RegisterSnapTradeUser(snapTradeRegisterUserRequestBody);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.RegisterSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
