module Cpc
  module FileParser
    def parse_json_file(json_file_path)
      JSON.parse(File.read(json_file_path), symbolize_names: true)
    end

    def parse_text_lines(text_file_path)
      File.read(text_file_path).split("\n")
    end

    def parse_har_file(har_file_path)
      parse_json_file(har_file_path)
    end

    def parse_csv_file(csv_file_path)
      CSV.read(csv_file_path, headers: true, header_converters: :symbol)
    end

    def parse_xlsx_file(xlsx_file_path)
      Roo::Spreadsheet.open('./new_prices.xlsx')
    end
  end
end
