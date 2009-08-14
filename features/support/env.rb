ENV['RACK_ENV'] = 'test'

require 'spec/expectations'
require 'spec/mocks'
require 'webrat'
require 'rack/test'

require File.dirname(__FILE__) + '/../../test_application'

Webrat.configure do |config|
  config.mode = :rack
end

World do
  def app
    @app = Rack::Builder.new do
      run TestApplication
    end

    @app
  end

  include Rack::Test::Methods
  include Webrat::Methods
  include Webrat::Matchers
  include Webrat::HaveTagMatcher
end

