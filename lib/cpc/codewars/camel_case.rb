require 'require_all'
require_all 'lib'

module Cpc
  module Codewars
    module CamelCase
      def camelcase(str)
        str.split.map { |w| w.capitalize }.join
      end
    end
  end
end
