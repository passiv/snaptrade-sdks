using System;
using System.Linq;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;
using Xunit;

namespace SnapTrade.Net.Test.Api
{

    public class CryptoTradingExampleTests
    {
        private TradingApi tradingApi;

        private readonly string testUserId;

        private readonly string testUserSecret;

        private readonly string accountId;

        public CryptoTradingExampleTests()
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

            tradingApi = new TradingApi(configuration);
        }

        [Fact(Skip = "requires placing an order")]
        public void OrderFlowExample() {
            // Find the instrument
            var searchResult = tradingApi.SearchCryptocurrencyPairInstruments(
                testUserId,
                testUserSecret,
                accountId: accountId,
                _base: "DOGE",
                quote: "USD"
            );
            var instrument = searchResult.Items.First();

            // Get a quote
            var quote = tradingApi.GetCryptocurrencyPairQuote(
                testUserId,
                testUserSecret,
                accountId:accountId,
                instrumentSymbol: instrument.Symbol
            );
            Console.WriteLine("quote: {0}", quote);

            // Place a limit order
            var placeOrderResult = tradingApi.PlaceCryptoOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                new CryptoOrderForm(
                    instrument: new CryptoTradingInstrument(instrument.Symbol, CryptoTradingInstrument.TypeEnum.CRYPTOCURRENCYPAIR),
                    side: ActionStrict.SELL,
                    type: CryptoOrderForm.TypeEnum.LIMIT,
                    timeInForce: CryptoOrderForm.TimeInForceEnum.GTD,
                    expirationDate: DateTime.UtcNow.AddMinutes(1),
                    amount:42.2m,
                    limitPrice: quote.Ask * 2m,
                    postOnly: true
                )
            );
            Console.WriteLine("placeOrderResult: {0}", placeOrderResult);

            // Cancel the order
            var tradingCancelUserAccountOrderRequest = new TradingCancelUserAccountOrderRequest(
                placeOrderResult.BrokerageOrderId
            );
        
            var cancelOrderResult = tradingApi.CancelOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                tradingCancelUserAccountOrderRequest: tradingCancelUserAccountOrderRequest
            );
          
            Console.WriteLine("cancelOrderResult: {0}", cancelOrderResult);
        }

        [Fact(Skip = "WIP")]
        public void PreviewOrderExample() {
            var response = tradingApi.PreviewCryptoOrder(
                testUserId,
                testUserSecret,
                accountId: accountId,
                new CryptoOrderForm(
                    instrument: new CryptoTradingInstrument("DOGE-USDC", CryptoTradingInstrument.TypeEnum.CRYPTOCURRENCYPAIR),
                    side: ActionStrict.BUY,
                    type: CryptoOrderForm.TypeEnum.MARKET,
                    timeInForce: CryptoOrderForm.TimeInForceEnum.IOC,
                    amount:1.42m
                )
            );

            Console.WriteLine(response);
        }
    }
}
