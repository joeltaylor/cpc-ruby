module Cpc
  module MyStrings
    module CaseConverter
      include MyStrings

      def kebab_to_snake(str)
        split_join(str, '-', '_')
      end

      def downcase_to_snake(str)
        split_join(str, nil, '_')
      end

      def upcase_to_snake(str)
        split_join(str.downcase, nil, '_')
      end

      def capitalized_to_snake(str)
        upcase_to_snake(str)
      end

      def title_to_snake(str)
        upcase_to_snake(str)
      end
    end
  end
end
