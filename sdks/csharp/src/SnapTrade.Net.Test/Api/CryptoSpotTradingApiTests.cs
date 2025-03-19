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
using System.Diagnostics;

namespace SnapTrade.Net.Test.Api
{

    public class CryptoSpotTradingApiTests
    {
        private CryptoSpotTradingApi cryptoSpotTradingApi;

        private readonly string testUserId;

        private readonly string testUserSecret;

        private readonly string accountId;

        public CryptoSpotTradingApiTests()
        {
            this.testUserId = Environment.GetEnvironmentVariable("SNAPTRADE_TEST_USER_ID");
            this.testUserSecret = Environment.GetEnvironmentVariable("SNAPTRADE_TEST_USER_SECRET");
            this.accountId = Environment.GetEnvironmentVariable("SNAPTRADE_TEST_COINBASE_ACCOUNT_ID");

            var basePathOverride = Environment.GetEnvironmentVariable("SNAPTRADE_API_URL_OVERRIDE");
            var configuration = new Configuration
            {
                ApiKey = {
                    { "clientId", Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID") }
                },
                BasePath = string.IsNullOrEmpty(basePathOverride) ? null : basePathOverride,
                ConsumerKey = Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY")
            };

            cryptoSpotTradingApi = new CryptoSpotTradingApi(configuration);
        }

        [Fact(Skip = "requires placing an order")]
        public void OrderFlowExample() {

            // Find the symbol
            var symbolsResult = cryptoSpotTradingApi.CryptoSpotSymbols(
                testUserId,
                testUserSecret,
                accountId: accountId,
                _base: "DOGE",
                quote: "USD"
            );
            var symbol = symbolsResult.Items.First();

            // Get a quote
            var quote = cryptoSpotTradingApi.CryptoSpotQuote(
                testUserId,
                testUserSecret,
                accountId:accountId,
                _base: symbol.Base,
                quote: symbol.Quote
            );
            Console.WriteLine("quote: {0}", quote);

            // Place a limit order
            var placeOrderResult = cryptoSpotTradingApi.CryptoSpotPlaceOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                new TradingCryptoSpotPlaceOrderRequest(
                    symbol: symbol,
                    side: ActionStrict.SELL,
                    type: TradingCryptoSpotPlaceOrderRequest.TypeEnum.LIMIT,
                    timeInForce: TradingCryptoSpotPlaceOrderRequest.TimeInForceEnum.GTD,
                    expirationDate: DateTime.UtcNow.AddMinutes(5),
                    amount:42.2m,
                    limitPrice: quote.Ask * 2m,
                    postOnly: true
                )
            );
            Console.WriteLine("placeOrderResult: {0}", placeOrderResult);

            // Cancel the order
            var cancelOrderResult = cryptoSpotTradingApi.CryptoSpotCancelOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                new TradingCryptoSpotCancelOrderRequest(placeOrderResult.BrokerageOrderId)
            );
            Console.WriteLine("cancelOrderResult: {0}", cancelOrderResult);
        }

        [Fact(Skip = "WIP")]
        public void PreviewOrderExample() {
            var response = cryptoSpotTradingApi.CryptoSpotPreviewOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                new TradingCryptoSpotPlaceOrderRequest(
                    symbol: new CryptocurrencyPair("DOGE", "USDC"),
                    side: ActionStrict.BUY,
                    type: TradingCryptoSpotPlaceOrderRequest.TypeEnum.MARKET,
                    timeInForce: TradingCryptoSpotPlaceOrderRequest.TimeInForceEnum.IOC,
                    amount:1.42m
                )
            );

            Console.WriteLine(response);
        }

        [Fact(Skip = "WIP")]
        public void GetQuoteExample() {
            var response = cryptoSpotTradingApi.CryptoSpotQuote(
                testUserId,
                testUserSecret,
                accountId: accountId,
                _base: "BTC",
                quote: "USDT"
            );

            Console.WriteLine(response);
        }

        [Fact(Skip = "WIP")]
        public void SearchSymbolsExample() {
            var response = cryptoSpotTradingApi.CryptoSpotSymbols(
                testUserId,
                testUserSecret,
                accountId: accountId,
                _base: "BTC"
            );

            foreach (var symbol in response.Items) {
                Console.WriteLine(symbol);
            }
        }
    }
}
