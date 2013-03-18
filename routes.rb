require 'instagram'
require 'sinatra'

load 'config.rb'

enable :sessions

get '/' do
  "Hello World!"
end
