module Cpc
  module DataGenerator
    def prettified_json_from_hash(hsh)
      JSON.pretty_generate(hsh)
    end

    def csv_from_hash(ary_hsh)
      header_str_ary = ary_hsh.keys
      my_csv = CSV.generate(headers: true, converters: :numeric) do |csv|
        csv << header_str_ary
        ary_hsh.values.each do |ary|
          csv << ary
        end
      end
      my_csv
    end

    def csv_from_sql(sql)
      header_str_ary = sql.columns
      my_csv = CSV.generate(headers: true, converters: :numeric) do |csv|
        csv << header_str_ary
        sql.to_a.each do |hash|
          csv << hash.values
        end
      end
      my_csv
    end
  end
end
