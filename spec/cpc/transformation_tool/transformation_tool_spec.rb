require 'spec_helper'

RSpec.describe Cpc::TransformationTool::TransformationTool do

  let(:har_filepath) { 'spec/fixtures/sample.har' }

  it 'should retrieve log values' do
    expect(subject.har_harvester.log(har_filepath).keys).to eq([:version, :creator, :pages, :entries])
  end
end
