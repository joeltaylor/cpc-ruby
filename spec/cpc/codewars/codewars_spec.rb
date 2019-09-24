require 'spec_helper'

RSpec.describe Cpc::Codewars do
  include Cpc::Codewars

  it "should return hello_codewars" do
    expect(hello_codewars).to eq('hello_codewars')
  end

  it "should return weight of dried potato" do
    expect(drying_potatoes.potatoes(82, 127, 80)).to eq(114)
  end

end
