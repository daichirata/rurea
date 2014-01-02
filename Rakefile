$:.unshift File.dirname(__FILE__)
require 'lib/rurema'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

namespace :init do
  task "r187" do
    Rurema.new("1.8.7").init
  end
  task "r192" do
    Rurema.new("1.9.2").init
  end
  task "r193" do
    Rurema.new("1.9.3").init
  end
  task "r200" do
    Rurema.new("1.8.7").init
  end
  task "r210" do
    Rurema.new("1.9.2").init
  end

  task "all" do
    %w(1.8.7 1.9.2 1.9.3 2.0.0 2.1.0).each do |v|
      Rurema.new(v).init
    end
  end
end

namespace :update do
  task "r187" do
    Rurema.new("1.8.7").update
  end
  task "r192" do
    Rurema.new("1.9.2").update
  end
  task "r193" do
    Rurema.new("1.9.3").update
  end
  task "r200" do
    Rurema.new("1.9.3").update
  end
  task "r210" do
    Rurema.new("1.9.3").update
  end

  task "all" do
    %w(1.8.7 1.9.2 1.9.3 2.0.0 2.1.0).each do |v|
      Rurema.new(v).update
    end
  end
end
