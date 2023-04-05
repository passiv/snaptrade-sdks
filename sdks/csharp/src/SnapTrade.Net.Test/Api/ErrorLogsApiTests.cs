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
    ///  Class for testing ErrorLogsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Konfig (https://konfigthis.com).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class ErrorLogsApiTests : IDisposable
    {
        private ErrorLogsApi instance;

        public ErrorLogsApiTests()
        {
            instance = new ErrorLogsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of ErrorLogsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' ErrorLogsApi
            //Assert.IsType<ErrorLogsApi>(instance);
        }

        /// <summary>
        /// Test ListUserErrors
        /// </summary>
        [Fact]
        public void ListUserErrorsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string userId = null;
            //string userSecret = null;
            //var response = instance.ListUserErrors(userId, userSecret);
            //Assert.IsType<List<UserErrorLog>>(response);
        }
    }
}