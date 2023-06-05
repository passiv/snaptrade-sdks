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
  # Return the exchange rate of a currency pair
  # @param currency_pair A currency pair based on currency code for example, {CAD-USD}
  # @param [Hash] opts the optional parameters
  # @return [ExchangeRatePairs]
  describe 'get_currency_exchange_rate_pair test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_partner_info
  # Get metadata related to Snaptrade partner
  # @param [Hash] opts the optional parameters
  # @return [PartnerData]
  describe 'get_partner_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_types
  # List of all security types.
  # @param [Hash] opts the optional parameters
  # @return [Array<SecurityType>]
  describe 'get_security_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchanges
  # Return list of stock exchanges on Passiv and their suffixes
  # @param [Hash] opts the optional parameters
  # @return [Array<Exchange>]
  describe 'get_stock_exchanges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols
  # Search for symbols
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'get_symbols test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols_by_ticker
  # Get details of a symbol by the ticker
  # @param ticker The ticker of the UniversalSymbol to get.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :symbol_id OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.
  # @return [UniversalSymbol]
  describe 'get_symbols_by_ticker test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerage_authorization_type
  # List of all brokerage authorization types
  # @param [Hash] opts the optional parameters
  # @option opts [String] :brokerage Comma separated value of brokerage slugs
  # @return [Array<BrokerageAuthorizationTypeReadOnly>]
  describe 'list_all_brokerage_authorization_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerages
  # List of all brokerages.
  # @param [Hash] opts the optional parameters
  # @return [Array<Brokerage>]
  describe 'list_all_brokerages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_currencies
  # List of all supported currencies
  # @param [Hash] opts the optional parameters
  # @return [Array<Currency>]
  describe 'list_all_currencies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_currencies_rates
  # Return the exchange rates of all supported currencies
  # @param [Hash] opts the optional parameters
  # @return [Array<ExchangeRatePairs>]
  describe 'list_all_currencies_rates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for symbol_search_user_account
  # Search for symbols that are supported by a brokerage account using a substring
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account get positions.
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'symbol_search_user_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end