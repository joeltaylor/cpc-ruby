require "spec_helper"

RSpec.describe Cpc::MyModule1 do
  include Cpc::MyModule1
  it 'should return my_module1' do
    expect(my_module1).to eq('my_module1')
  end
end
