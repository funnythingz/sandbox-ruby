require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/base'

class App < Sinatra::Base

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

end

App.run! :host => 'localhost', :port => 4567
