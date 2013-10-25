ENV['RACK_ENV'] = 'test'

require 'rake'
load './Rakefile'

require 'rack/test'

require 'simplecov'
SimpleCov.start do 
  add_filter '/db/'    
  add_filter '/config/'
  add_filter '/spec/'
  add_filter '/public'
end

require_relative '../config/environment'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
  config.before do
    # puts "Reseting the #{ENV['RACK_ENV']} database."
    Rake::Task['db:reset'].invoke()
  end
end

def app
  subject
end
