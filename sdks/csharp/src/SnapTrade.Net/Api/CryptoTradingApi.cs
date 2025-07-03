using SnapTrade.Net.Client;

namespace SnapTrade.Net.Api
{
    public partial class CryptoTradingApi : CryptoTradingApiGenerated {
        public CryptoTradingApi() : base() {}
        public CryptoTradingApi(string basePath): base(basePath) {}
        public CryptoTradingApi(SnapTrade.Net.Client.Configuration configuration): base(configuration) {}
        public CryptoTradingApi(SnapTrade.Net.Client.ISynchronousClient client, SnapTrade.Net.Client.IAsynchronousClient asyncClient, SnapTrade.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}