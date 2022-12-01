require "sinatra"

get '/' do
  @comment = "commented!"
  erb :index
end

post '/create' do
  "#{params}"
end