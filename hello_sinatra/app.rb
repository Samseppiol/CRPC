require 'sinatra'
#Simply type in rackup in the terminal to get this live.

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sinatra!"
  end
end
