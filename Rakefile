require 'rake/testtask'
require 'rubocop/rake_task'
require 'data_mapper'

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
  DataMapper.auto_migrate!
end
