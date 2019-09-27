RSpec.describe Cpc::Demo do
  it 'should inherit hello_time_stamp' do
    expect(subject.hello_time_stamp).to eq('hello_time_stamp')
  end
end
