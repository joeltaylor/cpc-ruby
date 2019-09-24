require 'spec_helper'

RSpec.describe Cpc::Codewars::DryingPotatoes do
  include Cpc::Codewars::DryingPotatoes

  it "should return weight of dried potato" do
    expect(potatoes(82, 127, 80)).to eq(114)
    expect(potatoes(93, 129, 91)).to eq(100)
  end

  it "should return hello_codewars" do
    expect(hello_codewars).to eq('hello_codewars')
  end
end
