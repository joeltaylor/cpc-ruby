require 'spec_helper'

RSpec.describe Cpc::DataGenerator do
  include Cpc::DataGenerator

  let(:hsh) { {hello: 'world', greetings: 'earth', salutations: 'planet'} }

  it 'should generate prettified JSON from a Hash' do
    prettified_json = generate_prettified_json(hsh)
    Clipboard.copy(prettified_json)
    expect(prettified_json.class).to eq(JSON)
  end
end
