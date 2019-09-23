module Cpc
  module StringManipulator
    def mysql_query(sql_template_filepath, sql_params_hsh)
      sql_template_txt = File.read(sql_template_filepath)
      sql_params_hsh.each { |k, v| sql_template_txt.gsub!(k.to_s.upcase, v) }
      sql_template_txt
    end

    def split_join(str, split_str, delimiter_str)
      sans_split_str = str.split.join(delimiter_str)
      with_split_str = str.split(split_str).join(delimiter_str)
      split_str.nil? ? sans_split_str : with_split_str
    end

    def camel_to_snake(str)
      str.gsub(/[A-Z]/) { |s| [ "_", s.downcase].join }
    end

    def pascal_to_snake(str)
      camel_to_snake(str).sub('_', '')
    end

    def match_scan_split(str, case_str, delimiter_str)
      
    end

    def snake_case?(str)
      scan = str.scan(/[a-z]/).join
      split = str.split('_').join
      scan == split
    end

    def kebab_case?(str)

    end


  end
end
