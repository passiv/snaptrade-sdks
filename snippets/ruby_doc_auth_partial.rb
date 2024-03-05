configuration = SnapTrade::Configuration.new
configuration.client_id = ENV["SNAPTRADE_CLIENT_ID"]
configuration.consumer_key = ENV["SNAPTRADE_CONSUMER_KEY"]
snaptrade = SnapTrade::Client.new(configuration)