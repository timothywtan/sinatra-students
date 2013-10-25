task :environment, :env do |cmd, args|
  ENV["RACK_ENV"] ||= (args[:env] || "development")
  require "./config/environment"
end
 
namespace :db do
  desc "Run database migrations"
  task :migrate, :env do |cmd, args|
    env = args[:env] || ENV['RACK_ENV'] || "development"
    puts "Migrating the #{env} database."

    Rake::Task['environment'].invoke(env)
 
    require 'sequel/extensions/migration'
    Sequel::Migrator.apply(DB, "db/migrate")
  end
 
  desc "Rollback the database"
  task :rollback, :env do |cmd, args|
    env = args[:env] || ENV['RACK_ENV'] || "development"
    Rake::Task['environment'].invoke(env)
 
    require 'sequel/extensions/migration'
    version = (row = DB[:schema_info].first) ? row[:version] : nil
    Sequel::Migrator.apply(DB, "db/migrate", version - 1)
  end
 
  desc "Nuke the database (drop all tables)"
  task :nuke, :env do |cmd, args|
    env = args[:env] || ENV['RACK_ENV'] || "development"
    puts "Nuking the #{env} database."

    Rake::Task['environment'].invoke(env)
    DB.tables.each do |table|
      DB.run("DROP TABLE #{table}")
    end
  end
 
  desc "Reset the database"
  task :reset, [:env] => [:nuke, :migrate]
end