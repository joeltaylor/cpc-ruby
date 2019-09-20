require 'spec_helper'

RSpec.describe Cpc::TransformationTool::HarHarvester do

  let(:har_filepath) { 'spec/fixtures/sample.har' }

  it 'should retrieve log values' do
    expect(subject.log(har_filepath).keys).to eq([:version, :creator, :pages, :entries])
  end
end
