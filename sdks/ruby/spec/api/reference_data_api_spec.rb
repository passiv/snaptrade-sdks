=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::ReferenceDataApi
describe 'ReferenceDataApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::ReferenceDataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReferenceDataApi' do
    it 'should create an instance of ReferenceDataApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::ReferenceDataApi)
    end
  end

  # unit tests for get_currency_exchange_rate_pair
  # Get exchange rate of a currency pair
  # Returns an Exchange Rate Pair object for the specified Currency Pair.
  # @param currency_pair A currency pair based on currency code for example, {CAD-USD}
  # @param [Hash] opts the optional parameters
  # @return [ExchangeRatePairs]
  describe 'get_currency_exchange_rate_pair test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_partner_info
  # Get Client Info
  # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
  # @param [Hash] opts the optional parameters
  # @return [PartnerData]
  describe 'get_partner_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_types
  # List security types
  # Return all available security types supported by SnapTrade.
  # @param [Hash] opts the optional parameters
  # @return [Array<SecurityType>]
  describe 'get_security_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchanges
  # Get exchanges
  # Returns a list of all supported Exchanges.
  # @param [Hash] opts the optional parameters
  # @return [Array<Exchange>]
  describe 'get_stock_exchanges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols
  # Search symbols
  # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned. 
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'get_symbols test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols_by_ticker
  # Get symbol detail
  # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results. 
  # @param query The ticker or Universal Symbol ID to look up the symbol with.
  # @param [Hash] opts the optional parameters
  # @return [UniversalSymbol]
  describe 'get_symbols_by_ticker test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerage_authorization_type
  # Get all brokerage authorization types
  # Returns a list of all defined Brokerage authorization Type objects.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :brokerage Comma separated value of brokerage slugs
  # @return [Array<BrokerageAuthorizationTypeReadOnly>]
  describe 'list_all_brokerage_authorization_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerage_instruments
  # Get brokerage instruments
  # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don&#39;t will return an empty list.
  # @param brokerage_id 
  # @param [Hash] opts the optional parameters
  # @return [BrokerageInstrumentsResponse]
  describe 'list_all_brokerage_instruments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerages
  # Get brokerages
  # Returns a list of all defined Brokerage objects.
  # @param [Hash] opts the optional parameters
  # @return [Array<Brokerage>]
  describe 'list_all_brokerages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_currencies
  # Get currencies
  # Returns a list of all defined Currency objects.
  # @param [Hash] opts the optional parameters
  # @return [Array<Currency>]
  describe 'list_all_currencies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_currencies_rates
  # Get currency exchange rates
  # Returns a list of all Exchange Rate Pairs for all supported Currencies.
  # @param [Hash] opts the optional parameters
  # @return [Array<ExchangeRatePairs>]
  describe 'list_all_currencies_rates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for symbol_search_user_account
  # Search account symbols
  # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.  The search results are further limited to the symbols supported by the brokerage for which the account is under. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'symbol_search_user_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
