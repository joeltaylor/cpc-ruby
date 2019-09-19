module Cpc
  module WebScraper
    class NetworkLogHarvester < Cpc::Toolbox::DataParser
      def log(har_file_path)
        json_file(har_file_path)[:log]
      end
    end
  end
end
