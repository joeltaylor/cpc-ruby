require 'spec_helper'

RSpec.describe Cpc::Codewars::Something do
  include Cpc::Codewars::Something

  it "should return weight of dried potato" do
    expect(potatoes(82, 127, 80)).to eq(114)
    expect(potatoes(93, 129, 91)).to eq(100)
  end
end
