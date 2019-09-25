require 'spec_helper'

RSpec.describe Cpc::Codewars do
  include Cpc::Codewars

  it "should return hello_codewars" do
    expect(hello_codewars).to eq('hello_codewars')
  end

end
