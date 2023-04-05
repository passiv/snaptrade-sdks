# SnapTrade.Net.Api.ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetCurrencyExchangeRatePair**](ReferenceDataApi.md#getcurrencyexchangeratepair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair |
| [**GetPartnerInfo**](ReferenceDataApi.md#getpartnerinfo) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner |
| [**GetSecurityTypes**](ReferenceDataApi.md#getsecuritytypes) | **GET** /securityTypes | List of all security types. |
| [**GetStockExchanges**](ReferenceDataApi.md#getstockexchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes |
| [**GetSymbols**](ReferenceDataApi.md#getsymbols) | **POST** /symbols | Search for symbols |
| [**GetSymbolsByTicker**](ReferenceDataApi.md#getsymbolsbyticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker |
| [**ListAllBrokerageAuthorizationType**](ReferenceDataApi.md#listallbrokerageauthorizationtype) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types |
| [**ListAllBrokerages**](ReferenceDataApi.md#listallbrokerages) | **GET** /brokerages | List of all brokerages. |
| [**ListAllCurrencies**](ReferenceDataApi.md#listallcurrencies) | **GET** /currencies | List of all supported currencies |
| [**ListAllCurrenciesRates**](ReferenceDataApi.md#listallcurrenciesrates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies |
| [**SymbolSearchUserAccount**](ReferenceDataApi.md#symbolsearchuseraccount) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring |

<a name="getcurrencyexchangeratepair"></a>
# **GetCurrencyExchangeRatePair**
> ExchangeRatePairs GetCurrencyExchangeRatePair (string currencyPair)

Return the exchange rate of a currency pair

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetCurrencyExchangeRatePairExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);
            var currencyPair = "currencyPair_example";  // string | A currency pair based on currency code for example, {CAD-USD}

            try
            {
                // Return the exchange rate of a currency pair
                ExchangeRatePairs result = apiInstance.GetCurrencyExchangeRatePair(currencyPair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetCurrencyExchangeRatePair: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCurrencyExchangeRatePairWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return the exchange rate of a currency pair
    ApiResponse<ExchangeRatePairs> response = apiInstance.GetCurrencyExchangeRatePairWithHttpInfo(currencyPair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetCurrencyExchangeRatePairWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **currencyPair** | **string** | A currency pair based on currency code for example, {CAD-USD} |  |

### Return type

[**ExchangeRatePairs**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpartnerinfo"></a>
# **GetPartnerInfo**
> PartnerData GetPartnerInfo ()

Get metadata related to Snaptrade partner

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPartnerInfoExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // Get metadata related to Snaptrade partner
                PartnerData result = apiInstance.GetPartnerInfo();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetPartnerInfo: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPartnerInfoWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get metadata related to Snaptrade partner
    ApiResponse<PartnerData> response = apiInstance.GetPartnerInfoWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetPartnerInfoWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**PartnerData**](PartnerData.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsecuritytypes"></a>
# **GetSecurityTypes**
> List&lt;SecurityType&gt; GetSecurityTypes ()

List of all security types.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetSecurityTypesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // List of all security types.
                List<SecurityType> result = apiInstance.GetSecurityTypes();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetSecurityTypes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSecurityTypesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of all security types.
    ApiResponse<List<SecurityType>> response = apiInstance.GetSecurityTypesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetSecurityTypesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SecurityType&gt;**](SecurityType.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all defined Security Type objects. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getstockexchanges"></a>
# **GetStockExchanges**
> List&lt;Exchange&gt; GetStockExchanges ()

Return list of stock exchanges on Passiv and their suffixes

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetStockExchangesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // Return list of stock exchanges on Passiv and their suffixes
                List<Exchange> result = apiInstance.GetStockExchanges();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetStockExchanges: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetStockExchangesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return list of stock exchanges on Passiv and their suffixes
    ApiResponse<List<Exchange>> response = apiInstance.GetStockExchangesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetStockExchangesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;Exchange&gt;**](Exchange.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all supported stock exchanges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsymbols"></a>
# **GetSymbols**
> List&lt;UniversalSymbol&gt; GetSymbols (SymbolQuery symbolQuery = null)

Search for symbols

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetSymbolsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);
            var symbolQuery = new SymbolQuery(); // SymbolQuery |  (optional) 

            try
            {
                // Search for symbols
                List<UniversalSymbol> result = apiInstance.GetSymbols(symbolQuery);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetSymbols: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSymbolsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search for symbols
    ApiResponse<List<UniversalSymbol>> response = apiInstance.GetSymbolsWithHttpInfo(symbolQuery);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetSymbolsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolQuery** | [**SymbolQuery**](SymbolQuery.md) |  | [optional]  |

### Return type

[**List&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of UniversalSymbol objects which match the specified substring |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsymbolsbyticker"></a>
# **GetSymbolsByTicker**
> UniversalSymbol GetSymbolsByTicker (Guid ticker, Guid? symbolId = null)

Get details of a symbol by the ticker

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetSymbolsByTickerExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);
            var ticker = "ticker_example";  // Guid | The ticker of the UniversalSymbol to get.
            var symbolId = "symbolId_example";  // Guid? | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. (optional) 

            try
            {
                // Get details of a symbol by the ticker
                UniversalSymbol result = apiInstance.GetSymbolsByTicker(ticker, symbolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.GetSymbolsByTicker: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSymbolsByTickerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get details of a symbol by the ticker
    ApiResponse<UniversalSymbol> response = apiInstance.GetSymbolsByTickerWithHttpInfo(ticker, symbolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.GetSymbolsByTickerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ticker** | **Guid** | The ticker of the UniversalSymbol to get. |  |
| **symbolId** | **Guid?** | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | [optional]  |

### Return type

[**UniversalSymbol**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully gets a symbol |  -  |
| **404** | No symbol with the specified ticker found. |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listallbrokerageauthorizationtype"></a>
# **ListAllBrokerageAuthorizationType**
> List&lt;BrokerageAuthorizationTypeReadOnly&gt; ListAllBrokerageAuthorizationType (string brokerage = null)

List of all brokerage authorization types

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListAllBrokerageAuthorizationTypeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);
            var brokerage = QUESTRADE,ALPACA;  // string | Comma separated value of brokerage slugs (optional) 

            try
            {
                // List of all brokerage authorization types
                List<BrokerageAuthorizationTypeReadOnly> result = apiInstance.ListAllBrokerageAuthorizationType(brokerage);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.ListAllBrokerageAuthorizationType: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListAllBrokerageAuthorizationTypeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of all brokerage authorization types
    ApiResponse<List<BrokerageAuthorizationTypeReadOnly>> response = apiInstance.ListAllBrokerageAuthorizationTypeWithHttpInfo(brokerage);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.ListAllBrokerageAuthorizationTypeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **brokerage** | **string** | Comma separated value of brokerage slugs | [optional]  |

### Return type

[**List&lt;BrokerageAuthorizationTypeReadOnly&gt;**](BrokerageAuthorizationTypeReadOnly.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all defined Brokerage Authorization Type objects. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listallbrokerages"></a>
# **ListAllBrokerages**
> List&lt;Brokerage&gt; ListAllBrokerages ()

List of all brokerages.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListAllBrokeragesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // List of all brokerages.
                List<Brokerage> result = apiInstance.ListAllBrokerages();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.ListAllBrokerages: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListAllBrokeragesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of all brokerages.
    ApiResponse<List<Brokerage>> response = apiInstance.ListAllBrokeragesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.ListAllBrokeragesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;Brokerage&gt;**](Brokerage.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all defined Brokerage objects. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listallcurrencies"></a>
# **ListAllCurrencies**
> List&lt;Currency&gt; ListAllCurrencies ()

List of all supported currencies

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListAllCurrenciesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // List of all supported currencies
                List<Currency> result = apiInstance.ListAllCurrencies();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.ListAllCurrencies: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListAllCurrenciesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of all supported currencies
    ApiResponse<List<Currency>> response = apiInstance.ListAllCurrenciesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.ListAllCurrenciesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;Currency&gt;**](Currency.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all supported currencies. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listallcurrenciesrates"></a>
# **ListAllCurrenciesRates**
> List&lt;ExchangeRatePairs&gt; ListAllCurrenciesRates ()

Return the exchange rates of all supported currencies

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListAllCurrenciesRatesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);

            try
            {
                // Return the exchange rates of all supported currencies
                List<ExchangeRatePairs> result = apiInstance.ListAllCurrenciesRates();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.ListAllCurrenciesRates: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListAllCurrenciesRatesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return the exchange rates of all supported currencies
    ApiResponse<List<ExchangeRatePairs>> response = apiInstance.ListAllCurrenciesRatesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.ListAllCurrenciesRatesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;ExchangeRatePairs&gt;**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="symbolsearchuseraccount"></a>
# **SymbolSearchUserAccount**
> List&lt;UniversalSymbol&gt; SymbolSearchUserAccount (string userId, string userSecret, Guid accountId, SymbolQuery symbolQuery = null)

Search for symbols that are supported by a brokerage account using a substring

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SymbolSearchUserAccountExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new ReferenceDataApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account get positions.
            var symbolQuery = new SymbolQuery(); // SymbolQuery |  (optional) 

            try
            {
                // Search for symbols that are supported by a brokerage account using a substring
                List<UniversalSymbol> result = apiInstance.SymbolSearchUserAccount(userId, userSecret, accountId, symbolQuery);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ReferenceDataApi.SymbolSearchUserAccount: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SymbolSearchUserAccountWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search for symbols that are supported by a brokerage account using a substring
    ApiResponse<List<UniversalSymbol>> response = apiInstance.SymbolSearchUserAccountWithHttpInfo(userId, userSecret, accountId, symbolQuery);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ReferenceDataApi.SymbolSearchUserAccountWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account get positions. |  |
| **symbolQuery** | [**SymbolQuery**](SymbolQuery.md) |  | [optional]  |

### Return type

[**List&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Array of universal symbol supported by account based on substring sent it |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
