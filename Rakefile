ENV["SINATRA_ENV"] ||= "development"

require 'sinatra/activerecord/rake'
require_relative './config/environment'

desc 'Load a pry console'
task :console => [:environment] do
  Pry.start
end

# IMPORTANT - READ THIS TASK!
# This is the method in which you will initiate the scrape
# of the student site to populate your development database. 
desc 'Scrape the student site'
task :scrape_students do
  # First, load the student scraper, it isn't really part of our environment
  # only this task needs it.
  require './lib/student_scraper'

  # Let's instantiate and call. Make sure to read through the StudentScraper class.
  scraper = StudentScraper.new('http://ruby005.students.flatironschool.com')
  scraper.call
end
