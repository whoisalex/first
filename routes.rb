require 'haml'
require 'instagram'
require 'sinatra'

load 'config.rb'

enable :sessions

get '/' do
  cache_control :public
  haml :index
end
