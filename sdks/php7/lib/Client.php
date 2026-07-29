<?php

namespace SnapTrade;

class Client
{
    /** @var \SnapTrade\Api\AccountInformationApi */
    public $accountInformation;
    /** @var \SnapTrade\Api\ApiStatusApi */
    public $apiStatus;
    /** @var \SnapTrade\Api\AuthenticationApi */
    public $authentication;
    /** @var \SnapTrade\Api\ConnectionsApi */
    public $connections;
    /** @var \SnapTrade\Api\ExperimentalEndpointsApi */
    public $experimentalEndpoints;
    /** @var \SnapTrade\Api\OptionsApi */
    public $options;
    /** @var \SnapTrade\Api\ReferenceDataApi */
    public $referenceData;
    /** @var \SnapTrade\Api\TradingApi */
    public $trading;
    /** @var \SnapTrade\Api\TransactionsAndReportingApi */
    public $transactionsAndReporting;

    /**
     * Constructor
     */
    public function __construct(
        $consumerKey = null,
        $clientId = null,
        $Signature = null,
        $timestamp = null,
        $verifySsl = null,
        string $host = 'https://api.snaptrade.com',
        $config = null
    )
    {
        if ($config == null) {
            $config = new \SnapTrade\Configuration(
            );
            $config->setConsumerKey($consumerKey);
            $config->setApiKey("clientId", $clientId);
            $config->setApiKey("Signature", $Signature);
            $config->setApiKey("timestamp", $timestamp);
            if ($host !== null) $config->setHost($host);
            if ($verifySsl !== null) $config->setVerifySsl($verifySsl);
        }
        $this->accountInformation = new \SnapTrade\Api\AccountInformationApi($config);
        $this->apiStatus = new \SnapTrade\Api\ApiStatusApi($config);
        $this->authentication = new \SnapTrade\Api\AuthenticationApi($config);
        $this->connections = new \SnapTrade\Api\ConnectionsApi($config);
        $this->experimentalEndpoints = new \SnapTrade\Api\ExperimentalEndpointsApi($config);
        $this->options = new \SnapTrade\Api\OptionsApi($config);
        $this->referenceData = new \SnapTrade\Api\ReferenceDataApi($config);
        $this->trading = new \SnapTrade\Api\TradingApi($config);
        $this->transactionsAndReporting = new \SnapTrade\Api\TransactionsAndReportingApi($config);
    }
}
