require 'rubocop/rake_task'

desc 'Lint files'
RuboCop::RakeTask.new(:lint)

task :ci do
  Rake::Task['lint'].invoke
end
