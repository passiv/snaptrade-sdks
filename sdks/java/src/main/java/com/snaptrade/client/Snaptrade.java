package com.snaptrade.client;

import com.snaptrade.client.api.AccountInformationApi;
import com.snaptrade.client.api.ApiStatusApi;
import com.snaptrade.client.api.AuthenticationApi;
import com.snaptrade.client.api.ConnectionsApi;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import com.snaptrade.client.api.OptionsApi;
import com.snaptrade.client.api.ReferenceDataApi;
import com.snaptrade.client.api.TradingApi;
import com.snaptrade.client.api.TransactionsAndReportingApi;

public class Snaptrade {
    private ApiClient apiClient;
    public final AccountInformationApi accountInformation;
    public final ApiStatusApi apiStatus;
    public final AuthenticationApi authentication;
    public final ConnectionsApi connections;
    public final ExperimentalEndpointsApi experimentalEndpoints;
    public final OptionsApi options;
    public final ReferenceDataApi referenceData;
    public final TradingApi trading;
    public final TransactionsAndReportingApi transactionsAndReporting;

    public Snaptrade() {
        this(null);
    }

    public Snaptrade(Configuration configuration) {
        this.apiClient = new ApiClient(null, configuration);
        this.accountInformation = new AccountInformationApi(this.apiClient);
        this.apiStatus = new ApiStatusApi(this.apiClient);
        this.authentication = new AuthenticationApi(this.apiClient);
        this.connections = new ConnectionsApi(this.apiClient);
        this.experimentalEndpoints = new ExperimentalEndpointsApi(this.apiClient);
        this.options = new OptionsApi(this.apiClient);
        this.referenceData = new ReferenceDataApi(this.apiClient);
        this.trading = new TradingApi(this.apiClient);
        this.transactionsAndReporting = new TransactionsAndReportingApi(this.apiClient);
    }

}
