# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc 'default task'

task :default => :test

require './lib/multiplication_table'
desc "print a multiplication table of N primes Example: n_primes=5 rake print_table"
task :print_table do |t, args|
  if nil === ENV['n_primes']
    puts 'Print a multiplication table of primes.'
    puts 'Usage: n_primes=5 rake print_table'
  else
    MultiplicationTable.print ENV['n_primes']                  
  end
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "prime-utils #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
