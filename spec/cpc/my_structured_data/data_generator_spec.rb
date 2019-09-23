require 'spec_helper'

RSpec.describe Cpc::MyStructuredData::DataGenerator do
  include Cpc::MyStructuredData::DataGenerator
  include Cpc::MyStructuredData::FileParser

  let(:hsh) { {hello: 'world', greetings: 'earth', salutations: 'planet'} }
  let(:ary_hsh_filepath) { 'spec/fixtures/json_for_csv.json' }
  let(:prettified_json_filepath) { 'spec/output/prettified_json.json' }
  let(:csv_with_headers_filepath) { 'spec/output/csv_with_headers.csv' }

  it 'should generate prettified JSON from a Hash' do
    prettified_json = prettified_json_from_hash(hsh)

    f = File.open(prettified_json_filepath, 'w')
    f.write(prettified_json)
    f.close

    expect(valid_json?(prettified_json_filepath)).to eq(true)
  end

  it 'should generate CSV from a Hash' do
    ary_hsh = parse_json_file(ary_hsh_filepath)
    csv = csv_from_hash(ary_hsh)

    f = File.open(csv_with_headers_filepath, 'w')
    f.write(csv)
    f.close

    expect(parse_csv_file(csv_with_headers_filepath)).to be_a(CSV::Table)
  end
end
