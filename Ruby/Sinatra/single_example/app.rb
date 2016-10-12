require 'sinatra'

get '/' do
  erb :index
end

get '/?' do
  erb :index
end

# https://docs.puppet.com/puppet/latest/reference/lang_template_erb.html