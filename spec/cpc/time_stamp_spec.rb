RSpec.describe Cpc::TimeStamp do
  include Cpc::TimeStamp
  let(:time_str_input) { '1984-05-20 20:00:00' }
  let(:time_str_output) { '1984-05-20_20-00-00' }
  let(:time_obj) { Time.parse(time_str_input) }

  it 'should give now' do
    puts now_yyyymmdd
    puts now_yyyymmdd_hhmmss
  end

  it 'should return a time object' do
    expect(convert_to_yyyymmdd_hhmmss(time_obj)).to eq(time_str_output)
  end
end
