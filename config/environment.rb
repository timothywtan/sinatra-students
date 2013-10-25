# Bundler

require 'bundler'  
Bundler.require(:default, ENV['RACK_ENV'])

# Setup the database
DB = Sequel.connect("sqlite://db/students-#{ENV['RACK_ENV']}.db")

# Load our models, concerns, and controllers
def load_dirs(array)
  array.each do |dir|
    Dir.entries(dir).each do |file|
      next if file.start_with?(".")
      require_relative "../#{dir}/#{file}"
    end
  end
end

load_dirs(['app/concerns', 'app/models', 'app/controllers'])


