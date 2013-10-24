ENV['RACK_ENV'] = 'test'
require 'rack/test'
require 'simplecov'

SimpleCov.start
require_relative '../config/environment'

# describe 'The HelloWorld App' do
#   include Rack::Test::Methods

#   def app
#     Sinatra::Application
#   end

#   it "says hello" do
#     get '/'
#     expect(last_response).to be_ok
#     expect(last_response.body).to eq('Hello World')
#   end
# end

# # Make Rack::Test available to all spec contexts by including it via RSpec:

# require 'rspec'


# RSpec.configure do |conf|

# end

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
