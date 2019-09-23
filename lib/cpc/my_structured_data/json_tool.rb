module Cpc
  module MyStructuredData
    class JsonTool
      include Classifier
      include FileParser

      def classify_json_hash(json_file_path)
        j = parse_json_file(json_file_path).to_h
        hash?(j)
      end
    end
  end
end
