class ApplicationController < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)
  
  private
  # A quick method to add all our app files to the reloader
  def self.reload_dirs(array)
    array.each do |dir|
      Dir.entries(dir).each do |file|
        next if file.start_with?(".")
        also_reload "./#{dir}/#{file}"
      end
    end
  end

  configure :development do
    register Sinatra::Reloader
    reload_dirs ['app/concerns', 'app/models']
  end

end