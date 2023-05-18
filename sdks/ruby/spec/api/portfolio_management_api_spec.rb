=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::PortfolioManagementApi
describe 'PortfolioManagementApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::PortfolioManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortfolioManagementApi' do
    it 'should create an instance of PortfolioManagementApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::PortfolioManagementApi)
    end
  end

  # unit tests for add_portfolio_excluded_asset
  # Adds an asset to exclude to a portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which to exclude an asset.
  # @param [Hash] opts the optional parameters
  # @option opts [UniversalSymbol] :universal_symbol 
  # @return [ExcludedAsset]
  describe 'add_portfolio_excluded_asset test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create new portfolio group
  # @param user_id 
  # @param user_secret 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Array<PortfolioGroup>]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_asset_class
  # Create a new model asset class
  # @param [Hash] opts the optional parameters
  # @return [ModelAssetClassDetails]
  describe 'create_asset_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_model_portfolio
  # Creates a new model portfolio
  # @param [Hash] opts the optional parameters
  # @return [ModelPortfolioDetails]
  describe 'create_model_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_asset_class
  # Deletes a model asset class
  # @param model_asset_class_id The ID of the model asset class to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_asset_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_excluded_asset
  # Unexclude an asset from a portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which to unexclude an asset.
  # @param symbol_id The ID of the excluded asset Symbol to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_excluded_asset test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_model_portfolio_by_id
  # Deletes a model portfolio
  # @param model_portfolio_id The ID of the model portfolio to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_model_portfolio_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_portfoli
  # Remove a target portfolio.
  # @param portfolio_group_id The ID of the PortfolioGroup to delete.
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroup]
  describe 'delete_portfoli test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_portfolio_target_by_id
  # Remove a TargetAsset.
  # @param portfolio_group_id The ID of the PortfolioGroup under which to remove the target asset.
  # @param target_asset_id The ID of the TargetAsset to delete.
  # @param [Hash] opts the optional parameters
  # @return [TargetAsset]
  describe 'delete_portfolio_target_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for detail_asset_class
  # Get details of a model asset class
  # @param model_asset_class_id The ID of the model asset class to get.
  # @param [Hash] opts the optional parameters
  # @return [ModelAssetClassDetails]
  describe 'detail_asset_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_calculated_trade_by_id
  # Return an individual trade
  # @param portfolio_group_id The ID of the PortfolioGroup to perform rebalancing calculations
  # @param calculated_trade_id The ID of calculated trade to get account impact
  # @param trade_id The ID of trade object
  # @param [Hash] opts the optional parameters
  # @return [Array<Trade>]
  describe 'get_calculated_trade_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_model_details_by_id
  # Get details of a model portfolio
  # @param model_portfolio_id The ID of the model portfolio to get.
  # @param [Hash] opts the optional parameters
  # @return [ModelPortfolioDetails]
  describe 'get_model_details_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_balances
  # Get sum of cash balances in portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which to create the target asset.
  # @param [Hash] opts the optional parameters
  # @return [Array<Balance>]
  describe 'get_portfolio_balances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_details_by_id
  # Get details of a target portfolio
  # @param portfolio_group_id The ID of the PortfolioGroup to get.
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroup]
  describe 'get_portfolio_details_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_info
  # Return a whole bunch of relevant information relating to a portfolio group.
  # @param portfolio_group_id The ID of the PortfolioGroup under which to create the target asset.
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroupInfo]
  describe 'get_portfolio_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_settings
  # Get portfolio group settings
  # @param portfolio_group_id The ID of the PortfolioGroup under which to get the settings.
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroupSettings]
  describe 'get_portfolio_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_target_by_id
  # Get a specific target from a portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which to get the target asset.
  # @param target_asset_id The ID of the TargetAsset to get.
  # @param [Hash] opts the optional parameters
  # @return [TargetAsset]
  describe 'get_portfolio_target_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portfolio_targets
  # Get all target assets under the specified PortfolioGroup.
  # @param portfolio_group_id The ID of the PortfolioGroup under which to create the target asset.
  # @param [Hash] opts the optional parameters
  # @return [Array<TargetAsset>]
  describe 'get_portfolio_targets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_portoflio_excluded_assets
  # Get an array of excluded assets associated with a portfolio group\\
  # @param portfolio_group_id The ID of the PortfolioGroup under which the excluded assets are linked.
  # @param [Hash] opts the optional parameters
  # @return [Array<ExcludedAsset>]
  describe 'get_portoflio_excluded_assets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for import_model_portfolio
  # Import target allocation based on portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which to create the target asset.
  # @param [Hash] opts the optional parameters
  # @return [Array<TargetAsset>]
  describe 'import_model_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List all portfolio groups
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [Array<PortfolioGroup>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_asset_classes
  # List of model asset class
  # @param [Hash] opts the optional parameters
  # @return [Array<ModelAssetClassDetails>]
  describe 'list_asset_classes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_calculated_trades
  # List of trades to make to rebalance portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup to perform rebalancing calculations
  # @param [Hash] opts the optional parameters
  # @return [CalculatedTrade]
  describe 'list_calculated_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_model_portfolio
  # List of model portfolio
  # @param [Hash] opts the optional parameters
  # @return [Array<ModelPortfolioDetails>]
  describe 'list_model_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_portfolio_accounts
  # Get all accounts associated with a portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup under which the accounts are linked.
  # @param [Hash] opts the optional parameters
  # @return [Array<Account>]
  describe 'list_portfolio_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_model_portfolio_by_id
  # Updates model portfolio object
  # @param model_portfolio_id The ID of the model portfolio to update.
  # @param model_portfolio_details Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'modify_model_portfolio_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_portfolio
  # Update an existing target portfolio.
  # @param portfolio_group_id The ID of the PortfolioGroup to update.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroup]
  describe 'save_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_portfolio_symbols
  # Search for symbols limited to brokerages under the specified portfolio group
  # @param portfolio_group_id The ID of the PortfolioGroup to search under
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'search_portfolio_symbols test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_portfolio_targets
  # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
  # @param portfolio_group_id The ID of the PortfolioGroup under which to create the target asset.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<TargetAsset>] :target_asset 
  # @return [Array<TargetAsset>]
  describe 'set_portfolio_targets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_asset_class
  # Updates model asset class objects
  # @param model_asset_class_id The ID of the model asset class to update.
  # @param model_asset_class_details Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_asset_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_portfolio_settings
  # Updates portfolio group settings
  # @param portfolio_group_id The ID of the PortfolioGroup under which to patch the settings.
  # @param [Hash] opts the optional parameters
  # @return [PortfolioGroupSettings]
  describe 'update_portfolio_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_portfolio_target_by_id
  # Update a TargetAsset under the specified PortfolioGroup.
  # @param portfolio_group_id The ID of the PortfolioGroup under which to patch the target asset.
  # @param target_asset_id The ID of the TargetAsset to patch.
  # @param target_asset 
  # @param [Hash] opts the optional parameters
  # @return [TargetAsset]
  describe 'update_portfolio_target_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
