require 'require_all'
require_all 'lib'

module Cpc
  module Codewars
    module FiveNumberSummary
      def five_num(ary)
        output_ary = []

        binding.pry

        output_ary << ary.sort.min
        output_ary << ary.sort.min

        output_ary
      end
    end
  end
end
