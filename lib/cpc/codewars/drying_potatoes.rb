require 'require_all'
require_all 'lib'

module Cpc
  module Codewars
    module DryingPotatoes
      include Cpc::MyStructuredData::PleasingPrint
      include Codewars

      def potatoes(p0, w0, p1)
        weight_total_pre = w0
        weight_percent_water_pre = (p0 * 0.01)
        weight_percent_water_post = (p1 * 0.01)
        weight_percent_dry_post = (1 - weight_percent_water_post)
        wet_weight_pre = weight_total_pre * weight_percent_water_pre
        dry_weight = weight_total_pre - wet_weight_pre
        wet_weight_post = (weight_percent_water_post * dry_weight) / weight_percent_dry_post
        weight_total_post = dry_weight + wet_weight_post

        workings_hsh = {
          weight_total_pre: weight_total_pre,
          weight_percent_water_pre: weight_percent_water_pre,
          weight_percent_water_post: weight_percent_water_post,
          weight_percent_dry_post: weight_percent_dry_post,
          wet_weight_pre: wet_weight_pre,
          dry_weight: dry_weight,
          wet_weight_post: wet_weight_post,
          weight_total_post: weight_total_post,
          weight_total_post_rounded: weight_total_post.round(2)
        }

        puts "\nWORKINGS\n\n"
        pleasing_print_hash(workings_hsh)
        weight_total_post.to_i
      end
    end
  end
end
