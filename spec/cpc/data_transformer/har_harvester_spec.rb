require 'spec_helper'

RSpec.describe Cpc::DataTransformer::HarHarvester do

  let(:har_filepath) { 'spec/fixtures/sample.har' }

  it 'should retrieve log values' do
    expect(subject.log(har_filepath).keys).to eq('keys')
  end

end
