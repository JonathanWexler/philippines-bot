require 'sinatra/base'

module JonBot
  class Web < Sinatra::Base
    get '/' do
      'Philippines'
    end
  end
end