RSpec.describe Cpc::Classifier do
  include Cpc::Classifier

  let(:hsh_ary_hsh) { {a: [{ a1: "hello", a2: "world" }, { a3: "hello", a4: "world" }], b: [{ b1: "hello", b2: "world" }, { b3: "hello", b4: "world" }]} }
  let(:hsh_ary) { [{ a: "hello", b: "world" }, { a: "hello", b: "world" }] }
  let(:ary_ary) { [%w[this is an array], %w[this is an array]] }
  let(:hsh) { { a: "hello", b: "world" } }
  let(:ary) { %w[this is an array] }
  let(:sym) { :symbol }
  let(:int) { 123 }
  let(:f2) { 123.12 }

  it 'returns hello_parser' do
    expect(hello_classifier).to eq('hello_classifier')
  end

  it 'should return an Array check' do
    expect(array?(ary)).to eq(true)
    expect(array?(hsh)).to eq(false)
  end

  it 'should return a Hash check' do
    expect(hash?(ary)).to eq(false)
    expect(hash?(hsh)).to eq(true)
  end

  it 'should return a Hash-Array' do
    expect(hash_array?(ary)).to eq(false)
    expect(hash_array?(hsh)).to eq(false)
    expect(hash_array?(hsh_ary)).to eq(true)
  end

  it 'should return a Array-Array' do
    expect(array_array?(ary)).to eq(false)
    expect(array_array?(hsh)).to eq(false)
    expect(array_array?(ary_ary)).to eq(true)
  end

  it 'should return a Hash-Array-Hash' do
    expect(hash_array_hash?(hsh_ary_hsh)).to eq(true)
    expect(hash_array_hash?(hsh_ary)).to eq(false)
  end

  it 'should classify by object type' do
    expect(classify(hsh_ary_hsh)).to eq('hash_array_hash')
    expect(classify(hsh_ary)).to eq('hash_array')
    expect(classify(ary_ary)).to eq('array_array')
    expect(classify(ary)).to eq('array')
    expect(classify(hsh)).to eq('hash')
    expect(classify(sym)).to eq('symbol')
    expect(classify(int)).to eq('integer')
    expect(classify(f2)).to eq('float')
  end
end
