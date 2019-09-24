module Cpc
  module Codewars
    module DryingPotatoes

      def potatoes(p0, w0, p1)
        # initial_water_f2 = p0
        # initial_mass_int = w0
        # final_water_f2 = p1

        # expect(potatoes(82, 127, 80)).to eq(114)
        # expect(potatoes(93, 129, 91)).to eq(100)

        before_percentage_water = p0
        before_percentage_dry = 100 - before_percentage_water
        before_weight_total = w0

        before_weight_wet = (before_weight_total * before_percentage_water) / 100
        dry_weight = before_weight_total - before_weight_wet

        after_percentage_water = p1
        after_percentage_dry = 100 - after_percentage_water
        after_weight_total = dry_weight * (100 / after_percentage_dry)

        binding.pry



        # All we eat is water and dry matter.
        # John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.
        # The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.
        # At the output the water content is only 98%.
        #
        # What is the total weight in kilograms (water content plus dry matter) coming out of the oven?
        # He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"
        #
        # Can you help him?
        # Write function potatoes with
        #
        # int parameter p0 - initial percent of water-
        # int parameter w0 - initial weight -
        # int parameter p1 - final percent of water -
        # potatoes should return the final weight coming out of the oven w1 truncated as an int.









      end



    end
  end
end
