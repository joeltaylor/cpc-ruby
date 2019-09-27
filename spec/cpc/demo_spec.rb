require 'spec_helper'

RSpec.describe Cpc::Demo do
  it 'should inherit hello_time_stamp' do
    expect(subject.hello_time_stamp).to eq('hello_time_stamp')
  end

  it 'should inherit hello_string_util' do
    expect(subject.hello_string_util).to eq('hello_string_util')
  end
end
