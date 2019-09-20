require "spec_helper"

RSpec.describe Cpc::JsonTool do
  include Cpc::DataParser
  let(:json_file_path) { 'spec/fixtures/sample.json' }

  it "should parse JSON and classify a Hash" do
    expect(subject.classify_json_hash(json_file_path)).to eq(true)
  end
end
