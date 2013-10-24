ENV['RACK_ENV'] = 'test'

require 'rack/test'

require 'simplecov'
SimpleCov.start

require_relative '../config/environment'

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
