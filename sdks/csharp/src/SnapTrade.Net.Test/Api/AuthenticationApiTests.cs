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
// uncomment below to import models
//using SnapTrade.Net.Model;

namespace SnapTrade.Net.Test.Api
{
    /// <summary>
    ///  Class for testing AuthenticationApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Konfig (https://konfigthis.com).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class AuthenticationApiTests : IDisposable
    {
        private AuthenticationApi instance;

        public AuthenticationApiTests()
        {
            instance = new AuthenticationApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of AuthenticationApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' AuthenticationApi
            //Assert.IsType<AuthenticationApi>(instance);
        }

        /// <summary>
        /// Test DeleteSnapTradeUser
        /// </summary>
        [Fact]
        public void DeleteSnapTradeUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string userId = null;
            //var response = instance.DeleteSnapTradeUser(userId);
            //Assert.IsType<DeleteUserResponse>(response);
        }

        /// <summary>
        /// Test GetUserJWT
        /// </summary>
        [Fact]
        public void GetUserJWTTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string userId = null;
            //string userSecret = null;
            //var response = instance.GetUserJWT(userId, userSecret);
            //Assert.IsType<EncryptedResponse>(response);
        }

        /// <summary>
        /// Test ListSnapTradeUsers
        /// </summary>
        [Fact]
        public void ListSnapTradeUsersTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.ListSnapTradeUsers();
            //Assert.IsType<List<string>>(response);
        }

        /// <summary>
        /// Test LoginSnapTradeUser
        /// </summary>
        [Fact]
        public void LoginSnapTradeUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string userId = null;
            //string userSecret = null;
            //SnapTradeLoginUserRequestBody snapTradeLoginUserRequestBody = null;
            //var response = instance.LoginSnapTradeUser(userId, userSecret, snapTradeLoginUserRequestBody);
            //Assert.IsType<AuthenticationLoginSnapTradeUser200Response>(response);
        }

        /// <summary>
        /// Test RegisterSnapTradeUser
        /// </summary>
        [Fact]
        public void RegisterSnapTradeUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //SnapTradeRegisterUserRequestBody snapTradeRegisterUserRequestBody = null;
            //var response = instance.RegisterSnapTradeUser(snapTradeRegisterUserRequestBody);
            //Assert.IsType<UserIDandSecret>(response);
        }
    }
}