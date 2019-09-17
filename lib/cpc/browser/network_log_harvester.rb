module Cpc
  module Browser
    class NetworkLogHarvester
      def log(har_file_path)
        json_file(har_file_path)[:log]
      end
    end
  end
end
