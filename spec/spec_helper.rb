require "bundler/setup"
require "cpc"
require 'require_all'
require 'csv'
require 'pry'
require 'figaro'
require 'clipboard'

RSpec.configure do |config|
  # Require all files in lib folder
  # require_all 'lib'

  # Make sensitive variables from Figaro available
  Figaro.application = Figaro::Application.new(environment: "development", path: "config/application.yml")
  Figaro.load

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
