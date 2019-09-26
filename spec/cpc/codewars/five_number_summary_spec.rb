require 'spec_helper'

RSpec.describe Cpc::Codewars::FiveNumberSummary do
  include Cpc::Codewars::FiveNumberSummary

  let(:input_numbers) { [5,4,6,-8,-2,-1,-8,7] }
  let(:output_numbers) { [-8.0,-5.0,1.5,5.5,7.0] }

  it 'should return ordered numbers' do
    expect(five_num(input_numbers)).to eq(output_numbers)
  end


end
