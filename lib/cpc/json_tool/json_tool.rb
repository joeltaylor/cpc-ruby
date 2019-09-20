module Cpc
  module JsonTool
    class JsonTool
      include DataParser
      include Classifier

      def classify_json_hash(json_file_path)
        j = json_file(json_file_path).to_h
        is_hash = hash?(j)
      end
    end
  end
end
