module Cpc
  class DataParser
    def json_file(json_file_path)
      JSON.parse(File.read(json_file_path), symbolize_names: true)
    end
  end
end
