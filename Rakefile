require 'rake/testtask'
require 'rubocop/rake_task'
require 'data_mapper'
require_relative './models'

desc 'Lint files'
RuboCop::RakeTask.new(:lint)

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end

task :ci do
  Rake::Task['lint'].invoke
  Rake::Task['test'].invoke
end

task :migrate do
  require_relative './setup_db'
  DataMapper.auto_migrate!
end

task :seed do
  require_relative './setup_db'
  require_relative './seeds'
end
