# application.rb

require 'nyny'
class App < NYNY::App
  get '/' do
    'Hello world!'
  end
end
