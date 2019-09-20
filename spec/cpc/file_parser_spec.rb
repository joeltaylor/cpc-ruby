require 'spec_helper'

RSpec.describe Cpc::FileParser do
  include Cpc::FileParser
  let(:json_file_path) { 'spec/fixtures/sample.json' }

  it 'returns a Hash from a JSON file' do
    json_hsh = parse_json_file(json_file_path)
    log = json_hsh[:log]
    entries = json_hsh[:log][:entries]

    expect(json_hsh).to be_a(Hash)
    expect(json_hsh.keys).to eq([:log])
    expect(log.keys).to eq([:version, :creator, :pages, :entries])
    expect(entries.count).to eq(32)
    expect(entries.first.keys).to eq([:startedDateTime, :time, :request, :response, :cache, :timings, :serverIPAddress, :_initiator, :_priority, :_resourceType, :pageref])
  end
end
