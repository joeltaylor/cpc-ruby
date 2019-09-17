RSpec.describe Cpc::Isbn do
  include Cpc::Isbn

  it 'should return hello_isbn' do
    expect(hello_isbn).to eq('this is message')
  end

  it 'should return the details of a book' do
    sample_book = book_details(123456789)
    expect(sample_book).to be_a(Hash)
    expect(sample_book[:name]).to eq('The Little Prince')
    expect(sample_book[:author]).to eq('Antoine de Saint-Expury')
    expect(sample_book[:genre]).to eq('Fantasy')
  end

end
