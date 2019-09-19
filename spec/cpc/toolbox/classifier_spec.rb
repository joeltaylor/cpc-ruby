RSpec.describe Cpc::Toolbox::Classifier do

  let(:hsh_ary_hsh) { {a: [{ a1: "hello", a2: "world" }, { a3: "hello", a4: "world" }], b: [{ b1: "hello", b2: "world" }, { b3: "hello", b4: "world" }]} }
  let(:hsh_ary) { [{ a: "hello", b: "world" }, { a: "hello", b: "world" }] }
  let(:ary_ary) { [%w[this is an array], %w[this is an array]] }
  let(:hsh) { { a: "hello", b: "world" } }
  let(:ary) { %w[this is an array] }
  let(:sym) { :symbol }
  let(:int) { 123 }
  let(:f2) { 123.12 }

  it 'returns hello_parser' do
    expect(subject.hello_classifier).to eq('hello_classifier')
  end

  it 'should return an Array check' do
    expect(subject.array?(ary)).to eq(true)
    expect(subject.array?(hsh)).to eq(false)
  end

  it 'should return a Hash check' do
    expect(subject.hash?(ary)).to eq(false)
    expect(subject.hash?(hsh)).to eq(true)
  end

  it 'should return a Hash-Array' do
    expect(subject.hash_array?(ary)).to eq(false)
    expect(subject.hash_array?(hsh)).to eq(false)
    expect(subject.hash_array?(hsh_ary)).to eq(true)
  end

  it 'should return a Array-Array' do
    expect(subject.array_array?(ary)).to eq(false)
    expect(subject.array_array?(hsh)).to eq(false)
    expect(subject.array_array?(ary_ary)).to eq(true)
  end

  it 'should return a Hash-Array-Hash' do
    expect(subject.hash_array_hash?(hsh_ary_hsh)).to eq(true)
    expect(subject.hash_array_hash?(hsh_ary)).to eq(false)
  end

  it 'should classify by object type' do
    expect(subject.classify(hsh_ary_hsh)).to eq('hash_array_hash')
    expect(subject.classify(hsh_ary)).to eq('hash_array')
    expect(subject.classify(ary_ary)).to eq('array_array')
    expect(subject.classify(ary)).to eq('array')
    expect(subject.classify(hsh)).to eq('hash')
    expect(subject.classify(sym)).to eq('symbol')
    expect(subject.classify(int)).to eq('integer')
    expect(subject.classify(f2)).to eq('float')
  end
end
