require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'yoyoyoyo'
end

# use command: shotgun app.rb -p 4567
# this keeps the default sinatra port of 4567, shotgun's is 9393

get '/secret/hi' do
  'mmmmmmmmmmm'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
  # put the query string, ?name=James
end
