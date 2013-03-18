require 'instagram'
require 'sinatra'


$stdout.sync = true


configure do
  set :instagram_client_id, ENV['INSTAGRAM_CLIENT_ID']
  set :instagram_client_secret, ENV['INSTAGRAM_CLIENT_SECRET']
  set :instagram_access_token, ENV['INSTAGRAM_ACCESS_TOKEN']

  Instagram.configure do |config|
    config.client_id = settings.instagram_client_id
    config.access_token = settings.instagram_access_token
  end
end


configure :production do
  set :log_level, :info
  set :database_url, ENV['HEROKU_POSTGRESQL_VIOLET_URL']
end


configure :development do
  set :log_level, :debug
  set :database_url, "postgres://#{`whoami`.strip}@localhost/first"
end
