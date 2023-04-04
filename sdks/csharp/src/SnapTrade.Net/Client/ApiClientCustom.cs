using RestSharp;
using System;

namespace SnapTrade.Net.Client
{

    public partial class ApiClient
    {

        partial void InterceptRequest(RestRequest request)
        {
            string timestamp = DateTimeOffset.Now.ToUnixTimeSeconds().ToString();
            request.AddQueryParameter("timestamp", timestamp);

        }
    }
}