using SnapTrade.Net.Client;

namespace SnapTrade.Net.Api
{
    public partial class ManagementApi : ManagementApiGenerated {
        public ManagementApi() : base() {}
        public ManagementApi(string basePath): base(basePath) {}
        public ManagementApi(SnapTrade.Net.Client.Configuration configuration): base(configuration) {}
        public ManagementApi(SnapTrade.Net.Client.ISynchronousClient client, SnapTrade.Net.Client.IAsynchronousClient asyncClient, SnapTrade.Net.Client.IReadableConfiguration configuration): base(client, asyncClient, configuration) {}
    }
}