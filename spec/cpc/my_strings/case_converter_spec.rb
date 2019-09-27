require 'spec_helper'

RSpec.describe Cpc::MyStrings::CaseConverter do
  include Cpc::MyStrings::CaseConverter
  let(:snake) { 'this_is_a_string' }
  let(:pascal) { 'ThisIsAString' }
  let(:camel) { 'thisIsAString' }
  let(:kebab) { 'this-is-a-string' }
  let(:downcase) { 'this is a string' }
  let(:upcase) { 'THIS IS A STRING' }
  let(:capitalized) { "This is a string" }
  let(:title) { "This Is A String" }

  it 'should inherit hello_my_strings' do
    expect(hello_my_strings).to eq(hello_my_strings)
  end

  it "should convert kebab-case to snake_case" do
    expect(kebab_to_snake(kebab)).to eq(snake)
  end

  it 'should convert downcase to snake_case' do
    expect(downcase_to_snake(downcase)).to eq(snake)
  end

  it 'should convert upcase to snake_case' do
    expect(upcase_to_snake(upcase)).to eq(snake)
  end

  it 'should convert capitalized to snake_case' do
    expect(capitalized_to_snake(capitalized)).to eq(snake)
  end

  it 'should convert title to snake_case' do
    expect(title_to_snake(title)).to eq(snake)
  end

end
