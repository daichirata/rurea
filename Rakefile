$:.unshift File.dirname(__FILE__)
require 'lib/rurema'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

namespace :init do
  Rurema::RUBY_VERSIONS.each do |v|
    task "r#{v}" do
      Rurema.new(v).init
    end
  end

  task "all" do
    Rurema::RUBY_VERSIONS.each do |v|
      Rurema.new(v).init
    end
  end
end

namespace :update do
  Rurema::RUBY_VERSIONS.each do |v|
    task "r#{v}" do
      Rurema.new(v).update
    end
  end

  task "all" do
    Rurema::RUBY_VERSIONS.each do |v|
      Rurema.new(v).update
    end
  end
end
