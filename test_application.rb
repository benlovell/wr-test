require "rubygems"
require "sinatra/base"

class TestApplication < Sinatra::Default
  get "/" do
    'boobies'
  end
end
