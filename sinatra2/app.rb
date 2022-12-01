require "sinatra"

get '/' do
  @comment = "commented!"
  erb :index
end

post '/create' do
  point = params[:point]
  comment= params[:comment]
  "indiquer：#{point}　Commentaires：#{comment}"
end