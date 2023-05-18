# -*- encoding: utf-8 -*-

=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

$:.push File.expand_path("../lib", __FILE__)
require "snap_trade/version"

Gem::Specification.new do |s|
  s.name        = "snap_trade"
  s.version     = SnapTrade::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["SnapTrade"]
  s.email       = ["api@snaptrade.com"]
  s.homepage    = "https://snaptrade.com/"
  s.summary     = "SnapTrade Ruby Gem"
  s.description = "Connect brokerage accounts to your app for live positions and trading"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
