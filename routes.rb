require 'haml'
require 'instagram'
require 'json'
require 'sinatra'

load 'config.rb'

enable :sessions

get '/' do
  cache_control :public
  haml :index
end

get '/photos' do
  content_type :json
  media = Instagram.media_search(params['lat'], params['lon'])
  media.to_json
end
