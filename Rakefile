require 'bundler/gem_tasks'

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.test_files = FileList['test/**/*_test.rb']
  test.verbose = true
end

require 'rubocop/rake_task'
Rubocop::RakeTask.new(:rubocop)

task default: [:test]
