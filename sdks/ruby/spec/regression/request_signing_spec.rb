require 'spec_helper'

describe SnapTrade::ApiClientCustom do
  let(:configuration) do
    SnapTrade::Configuration.new.tap { |config| config.consumer_key = 'TEST_KEY' }
  end
  let(:request) do
    Faraday::Request.create(:post) do |req|
      req.path = path
      req.body = body
      req.headers = {}
      req.params = {
        clientId: 'TEST_CLIENT',
        userId: 'TEST_USER',
        userSecret: 'TEST_SECRET'
      }
    end
  end

  before do
    allow(Time).to receive(:now).and_return(Time.at(1_700_000_000))
  end

  context 'without a request body' do
    let(:path) { '/accounts/TEST_ACCOUNT/positions/all' }
    let(:body) { nil }

    it 'preserves the existing signature bytes' do
      described_class.request_hook(request, configuration)

      expect(request.params[:timestamp]).to eq(1_700_000_000)
      expect(request.headers[:Signature]).to eq('R7iYdxifiq/4joFEkOkaQj9QiW8LsgxmSDXco44gqtk=')
    end
  end

  context 'with unsorted JSON body keys' do
    let(:path) { '/orders' }
    let(:body) { '{"z":2,"a":1}' }

    it 'preserves body key sorting and the existing signature bytes' do
      described_class.request_hook(request, configuration)

      expect(request.headers[:Signature]).to eq('Zs3cXbvLmIEVPi69lHV6rah6wZ1phfk9cK6kbTYnSf4=')
    end
  end
end
