$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'rake/testtask'
require 'rubocop/rake_task'
require 'data_mapper'

require 'config_factory'

RuboCop::RakeTask.new(:lint)

Rake::TestTask.new do |t|
  ENV['RACK_ENV'] = 'test'
  t.test_files = FileList['test/**/*_test.rb']
end

task :ci do
  Rake::Task['lint'].invoke
  Rake::Task['test'].invoke
end

task :migrate do
  ConfigFactory.create('development').setup_db
  DataMapper.auto_migrate!
end

task :seed do
  ConfigFactory.create('development').setup_db
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
  require 'seeds'
end

task :run do
  ENV['RACK_ENV'] = 'development'
  sh('rackup')
end
