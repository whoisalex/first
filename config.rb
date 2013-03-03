require 'sinatra'


$stdout.sync = true


configure do
end


configure :production do
  set :log_level, :info
  set :database_url, ENV['HEROKU_POSTGRESQL_VIOLET_URL']
end


configure :development do
  set :log_level, :debug
  set :database_url, "postgres://#{`whoami`.strip}@localhost/first"
end
