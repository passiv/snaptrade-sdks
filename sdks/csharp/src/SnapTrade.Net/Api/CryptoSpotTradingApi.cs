using SnapTrade.Net.Client;

namespace SnapTrade.Net.Api
{
    public partial class CryptoSpotTradingApi : CryptoSpotTradingApiGenerated {
        public CryptoSpotTradingApi() : base() {}
        public CryptoSpotTradingApi(string basePath): base(basePath) {}
        public CryptoSpotTradingApi(SnapTrade.Net.Client.Configuration configuration): base(configuration) {}
        public CryptoSpotTradingApi(SnapTrade.Net.Client.ISynchronousClient client, SnapTrade.Net.Client.IAsynchronousClient asyncClient, SnapTrade.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}