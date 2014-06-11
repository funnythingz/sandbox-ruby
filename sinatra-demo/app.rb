require 'sinatra'
require 'sinatra/reloader'

get '/' do
    @name = "sinatra"
    @title = "sinatra sample"
    erb :index
end

get '/:name' do
    @name = "#{params[:name]}"
    @title = "#{params[:name]} sample"
    erb :index
end
