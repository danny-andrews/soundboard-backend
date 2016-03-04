require 'rake/testtask'
require 'rubocop/rake_task'
require 'data_mapper'
require 'database_cleaner'

require_relative './config_factory'

RuboCop::RakeTask.new(:lint)

ENV['RACK_ENV'] ||= 'development'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end

task :ci do
  Rake::Task['lint'].invoke
  Rake::Task['test'].invoke
end

task :migrate do
  ConfigFactory.create(ENV['RACK_ENV']).run
  DataMapper.auto_migrate!
end

task :seed do
  ConfigFactory.create(ENV['RACK_ENV']).run
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
  require_relative './seeds'
end

task :run do
  sh('rackup')
end

task :prod_run do
  ENV['RACK_ENV'] = 'production'
  sh("rackup -p #{ENV['PORT'] || 9292}")
end
