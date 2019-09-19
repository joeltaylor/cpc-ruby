RSpec.describe Cpc::Toolbox::Toolbox do
  let(:hsh_ary_hsh) { {a: [{ a1: "hello", a2: "world" }, { a3: "hello", a4: "world" }], b: [{ b1: "hello", b2: "world" }, { b3: "hello", b4: "world" }]} }
  let(:hsh_ary) { [{ a: "hello", b: "world" }, { a: "hello", b: "world" }] }
  let(:ary_ary) { [%w[this is an array], %w[this is an array]] }
  let(:hsh) { { a: "hello", b: "world" } }
  let(:ary) { %w[this is an array] }
  let(:sym) { :symbol }
  let(:int) { 123 }
  let(:f2) { 123.12 }

  it 'should return an Array check' do
    expect(subject.classifier.array?(ary)).to eq(true)
    expect(subject.classifier.array?(hsh)).to eq(false)
  end


end
