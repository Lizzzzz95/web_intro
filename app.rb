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

get '/cat' do
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
