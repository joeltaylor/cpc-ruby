require 'spec_helper'

RSpec.describe Cpc::Codewars::DryingPotatoes do
  include Cpc::Codewars::DryingPotatoes

  it 'should return the dried weight of 82kg' do
    expect(potatoes(82, 127, 80)).to eq(114)
  end

  it 'alt_potatoes 82kg' do
    expect(alt_potatoes(82, 127, 80)).to eq(114)
  end

  it "should return the dried weight of 93kg" do
    expect(potatoes(93, 129, 91)).to eq(100)
  end

  it "should return hello_codewars" do
    expect(hello_codewars).to eq('hello_codewars')
  end

  it "alt_potatoes 93kg" do
    expect(alt_potatoes(93, 129, 91)).to eq(100)
  end  
end
