require 'spec_helper'
require 'json'

describe 'All account positions response deserialization' do
  let(:payload) do
    JSON.parse(File.read(File.join(__dir__, 'fixtures/all_account_positions.json')))
  end
  let(:body) { JSON.generate(payload) }
  let(:configuration) do
    SnapTrade::Configuration.new.tap do |config|
      config.host = 'https://sdk-test.invalid'
      config.client_id = 'TEST_CLIENT'
      config.consumer_key = 'TEST_KEY'
    end
  end
  let(:api_client) { SnapTrade::ApiClient.new(configuration) }
  let(:api) { SnapTrade::AccountInformationApi.new(api_client) }
  let(:arguments) do
    { user_id: 12345, user_secret: 'TEST_SECRET', account_id: 'TEST_ACCOUNT' }
  end
  let(:stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/accounts/TEST_ACCOUNT/positions/all') do
        [200, { 'content-type' => 'application/json' }, body]
      end
    end
  end
  let(:connection) do
    Faraday.new(url: configuration.base_url) { |conn| conn.adapter :test, stubs }
  end

  before do
    allow(api_client).to receive(:connection).and_return(connection)
  end

  after do
    stubs.verify_stubbed_calls
  end

  [:get_all_account_positions, :get_all_account_positions_with_http_info].each do |operation|
    context operation.to_s do
      let(:data) do
        result = api.public_send(operation, **arguments)
        if operation == :get_all_account_positions_with_http_info
          parsed, status, headers, response = result
          expect(status).to eq(200)
          expect(headers['content-type']).to eq('application/json')
          expect(response.body).to eq(body)
          parsed
        else
          result
        end
      end

      it 'returns the full response and both bond instruments from a populated HTTP 200 body' do
        expect(data).to be_a(SnapTrade::AllAccountPositionsResponse)
        expect(data.data_freshness.as_of).to eq(Time.utc(2026, 9, 8, 11, 2, 57))
        expect(data.results.length).to eq(2)
        expect(data.results.map(&:units)).to eq([70.0, 70.0])
        expect(data.results.map(&:price)).to eq([99.768, 100.025])
        expect(data.results.map(&:cost_basis)).to eq([97.51, 100.25])
        expect(data.results.map(&:instrument)).to all(be_a(SnapTrade::OtherInstrument))
        expect(data.results.map { |position| position.instrument.kind }).to eq(['bond', 'bond'])
        expect(data.results.map { |position| position.instrument.symbol }).to eq(['912797SA6', '91282CJT9'])
        expect(data.to_hash[:results].map { |position| position[:instrument][:kind] }).to eq(['bond', 'bond'])
      end

      it 'keeps a response object when there are no positions' do
        payload['results'] = []

        expect(data).to be_a(SnapTrade::AllAccountPositionsResponse)
        expect(data.results).to eq([])
        expect(data.data_freshness.as_of).to eq(Time.utc(2026, 9, 8, 11, 2, 57))
      end

      it 'retains instruments when bond and other positions appear together' do
        payload['results'][1]['instrument']['kind'] = 'other'

        expect(data).to be_a(SnapTrade::AllAccountPositionsResponse)
        expect(data.results.map(&:instrument)).to all(be_a(SnapTrade::OtherInstrument))
        expect(data.results.map { |position| position.instrument.kind }).to eq(['bond', 'other'])
        expect(data.results.map { |position| position.instrument.symbol }).to eq(['912797SA6', '91282CJT9'])
      end
    end
  end
end
