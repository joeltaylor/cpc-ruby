module Cpc
  module MyStrings
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

    def match_scan_split(str, delimiter_str, case_str = 'downcase')
      scan = str.scan(/[a-z]/).join if case_str == 'downcase'
      scan = str.scan(/[A-Z]/).join if case_str == 'upcase'
      split = str.split(delimiter_str).join
      scan == split
    end

    def snake_case?(str)
      match_scan_split(str, '_')
    end

    def kebab_case?(str)
      match_scan_split(str, '-')
    end

    def camel_case?(str)
      not_camel_case = snake_case?(str) || str[0] != str[0].downcase
      not_camel_case ? false : snake_case?(camel_to_snake(str))
    end

    def pascal_case?(str)
      downcase_ary = str.split("").select {|s| s.match?(/[a-z]/)}
      upcase_ary = str.split("").select {|s| s.match?(/[A-Z]/)}

      has_downcase = downcase_ary.count > 0
      has_upcase = upcase_ary.count > 0
      mixed_case = has_downcase && has_upcase

      split_ary = str.gsub(/[A-Z]/) { |s| [ " ", s].join }.split
      pascal_check_ary = split_ary.map {|s| s.match?(/[A-Z][a-z]*/) }.uniq
      pascal_check = pascal_check_ary.count == 1 && pascal_check_ary.first == true

      mixed_case ? pascal_check : false
    end
  end
end
