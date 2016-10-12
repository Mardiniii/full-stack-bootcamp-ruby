require 'sinatra'

get '/' do
  @name = params[:name]
  erb :index
end

post '/new/user' do
  "Hi #{params[:username]}, your name is #{params[:name]} and you are #{params[:profession]}!"
end




