require_relative 'time_stamp'
require_relative 'util/string_util'

module Cpc
  class Demo
    include Cpc::TimeStamp
    include Cpc::Util::StringUtil
  end
end
