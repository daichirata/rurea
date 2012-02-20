$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'rspec'
require 'sinatra'
require 'rack/test'

require 'rurea'
require 'rurema'

set :environment, :test

module MockRurea
  def app
    @app ||= Rurea::App
  end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include MockRurea
end
