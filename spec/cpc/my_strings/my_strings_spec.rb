require 'spec_helper'

RSpec.describe Cpc::MyStrings do
  include Cpc::MyStrings

  let(:snake) { 'this_is_a_string' }
  let(:pascal) { 'ThisIsAString' }
  let(:camel) { 'thisIsAString' }
  let(:kebab) { 'this-is-a-string' }
  let(:downcase) { 'this is a string' }
  let(:upcase) { 'THIS IS A STRING' }
  let(:capitalized) { "This is a string" }
  let(:title) { "This Is A String" }

  let(:sql_params_hsh) do
    {
      column_name_one: 'email',
      column_name_two: 'username',
      column_name_three: 'customer_id',
      column_name_four: 'location',
      schema_name: 'my_database',
      table_name: 'customers',
    }
  end

  let(:sql_template_filepath) { 'spec/fixtures/sql_template.sql' }
  let(:sql_template_populated_filepath) { 'spec/fixtures/sql_template_populated.sql' }
  let(:sql_query_output_filepath) { 'spec/output/sql_template_updated.sql' }

  it "should generate a sql query string from a template with parameters" do
    sql_req_str = mysql_query(sql_template_filepath, sql_params_hsh)
    sql_template_populated = File.read(sql_template_populated_filepath)

    f = File.open(sql_query_output_filepath, 'w')
    f.write(sql_req_str)
    f.close

    expect(sql_req_str).to eq(sql_template_populated)
  end

  it 'should convert camelCase to snake_case' do
    expect(camel_to_snake(camel)).to eq(snake)
  end

  it "should convert PascalCase to snake_case" do
    expect(pascal_to_snake(pascal)).to eq(snake)
  end

  it 'should identify whether a string is snake_case' do
    expect(snake_case?(snake)).to eq(true)
    expect(snake_case?(pascal)).to eq(false)
    expect(snake_case?(camel)).to eq(false)
    expect(snake_case?(kebab)).to eq(false)
    expect(snake_case?('THIS_IS_A_STRING')).to eq(false)
  end

  it 'should identify whether a string is kebab-case' do
    expect(kebab_case?(snake)).to eq(false)
    expect(kebab_case?(pascal)).to eq(false)
    expect(kebab_case?(camel)).to eq(false)
    expect(kebab_case?(kebab)).to eq(true)
    expect(kebab_case?('THIS_IS_A_STRING')).to eq(false)
  end

  it 'should identify whether a string is camelCase' do
    expect(camel_case?(snake)).to eq(false)
    expect(camel_case?(pascal)).to eq(false)
    expect(camel_case?(camel)).to eq(true)
    expect(camel_case?(kebab)).to eq(false)
    expect(camel_case?('THIS_IS_A_STRING')).to eq(false)
  end

  it 'should identify whether a string is PascalCase' do
    expect(pascal_case?(snake)).to eq(false)
    expect(pascal_case?(pascal)).to eq(true)
    expect(pascal_case?(camel)).to eq(false)
    expect(pascal_case?(kebab)).to eq(false)
    expect(pascal_case?('THIS_IS_A_STRING')).to eq(false)
  end
end
