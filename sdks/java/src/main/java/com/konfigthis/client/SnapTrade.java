package com.konfigthis.client;

import com.konfigthis.client.api.AccountInformationApi;
import com.konfigthis.client.api.ApiStatusApi;
import com.konfigthis.client.api.AuthenticationApi;
import com.konfigthis.client.api.PortfolioManagementApi;
import com.konfigthis.client.api.ReferenceDataApi;

public class SnapTrade {
    private ApiClient apiClient;
    public final ApiStatusApi apiStatus;
    public final AuthenticationApi authentication;
    public final PortfolioManagementApi portfolioManagement;
    public final AccountInformationApi accountInformation;
    public final ReferenceDataApi referenceData;

    public SnapTrade(Configuration configuration) {
        this.apiClient = new ApiClient(null, configuration);
        this.apiStatus = new ApiStatusApi(this.apiClient);
        this.authentication = new AuthenticationApi(this.apiClient);
        this.portfolioManagement = new PortfolioManagementApi(this.apiClient);
        this.accountInformation = new AccountInformationApi(this.apiClient);
        this.referenceData = new ReferenceDataApi(this.apiClient);
    }

}
