require 'spec_helper'

RSpec.describe Cpc::StringManipulator do
  include Cpc::StringManipulator

  let(:downcase) { 'this is a string' }
  let(:upcase) { 'THIS IS A STRING' }
  let(:capitalized) { "This is a string" }
  let(:title) { "This Is A String" }
  let(:snake) { 'this_is_a_string' }
  let(:camel) { 'thisIsAString' }
  let(:kebab) { 'this-is-a-string' }
  let(:pascal) { 'ThisIsAString' }

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

  it "should convert PascalCale to snake_case" do
    expect(pascal_to_snake(pascal)).to eq(snake)
  end
end
