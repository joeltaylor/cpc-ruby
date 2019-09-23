module Cpc
  module MyStructuredData
    module Classifier
      def hello_classifier
        'hello_classifier'
      end

      def array?(obj)
        obj.class == Array
      end

      def hash?(obj)
        obj.class == Hash
      end

      def composed_of_hashes?(obj)
        m = obj.map { |n| hash?(n) }.uniq
        m.count == 1 && m.first == true
      end

      def composed_of_arrays?(obj)
        m = obj.map { |n| array?(n) }.uniq
        m.count == 1 && m.first == true
      end

      def hash_array?(obj)
        array?(obj) ? composed_of_hashes?(obj) : false
      end

      def array_array?(obj)
        array?(obj) ? composed_of_arrays?(obj) : false
      end

      def hash_array_hash?(obj)
        value_check_ary = []

        if hash?(obj)
          obj.map do |k, v|
            if array?(v)
              value_check = v.map { |n| composed_of_hashes?(v) }
              value_check_ary << value_check
            end
          end
        end

        tidied_check = value_check_ary.flatten.uniq
        tidied_check.count == 1 && tidied_check.first == true
      end

      def classify(obj)
        case
        when hash_array_hash?(obj)
          'hash_array_hash'
        when hash_array?(obj)
          'hash_array'
        when array_array?(obj)
          'array_array'
        else
          obj.class.to_s.downcase
        end
      end
    end
  end
end
