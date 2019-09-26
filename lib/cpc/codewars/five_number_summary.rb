require 'require_all'
require_all 'lib'

module Cpc
  module Codewars
    module FiveNumberSummary

      def middle_index(odd_ary)
        # middle index
      end


      def five_num(ary)
        output_ary = []
        min_fr2 = ary.min.to_f.round(1)
        max_fr2 = ary.max.to_f.round(1)

        q2_fr2 = (ary.sum * 0.5).to_f.round(1)
        quarter_fr2 = ((q2_fr2 - ary.min) * 0.5).to_f.round(1)
        q1_fr2 = (q2_fr2 - quarter_fr2).to_f.round(1)
        q3_fr2 = (q2_fr2 + quarter_fr2).to_f.round(1)

        output_ary << min_fr2
        output_ary << q1_fr2
        output_ary << q2_fr2
        output_ary << max_fr2

        output_ary.flatten
      end
    end
  end
end
