require 'sinatra/base'

module JonBot
  class Web < Sinatra::Base
    get '/' do
      'This is Jon Bot: Beep Beep Boop'
    end
  end
end