module Cpc
  module DataGenerator
    def generate_prettified_json(hsh)
      JSON.pretty_generate(hsh)
    end
  end
end
