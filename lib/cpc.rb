require "cpc/version"
require 'rainbow'
require 'time'
require 'require_all'
require_all 'lib'

module Cpc
  class Cpc
    def data_parser
      DataParser.new
    end
  end
end
