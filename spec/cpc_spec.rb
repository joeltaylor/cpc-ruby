RSpec.describe Cpc::Cpc do
  # include Cpc::DataParser
  let(:json_file_path) { 'spec/fixtures/sample.json' }
  # it "has a version number" do
  #   expect(Cpc::VERSION).not_to be nil
  # end
  #
  # it "does something useful" do
  #   expect(false).to eq(false)
  # end
  #
  # it 'does something useful again' do
  #   expect(2 + 2).to eq(4)
  # end

  it 'should inherit from a module' do
    expect(subject.data_parser.json_file(json_file_path)).to be_a(Hash)
  end
end
