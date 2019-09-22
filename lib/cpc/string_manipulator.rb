module Cpc
  module StringManipulator
    def mysql_query(sql_template_filepath, sql_params_hsh)
      sql_template_txt = File.read(sql_template_filepath)
      sql_params_hsh.each { |k, v| sql_template_txt.gsub!(k.to_s.upcase, v) }
      sql_template_txt
    end

    def pascal_to_snake(pascal_str)
      pascal_str.gsub(/[A-Z]/) do
        if $1 == $1
          puts $1
        end
      end
      # convert pascal_str to snake_case
    end
  end
end
