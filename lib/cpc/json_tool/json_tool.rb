module Cpc
  module JsonTool
    class JsonTool
      include FileParser
      include Classifier

      def classify_json_hash(json_file_path)
        j = parse_json_file(json_file_path).to_h
        is_hash = hash?(j)
      end
    end
  end
end
