require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/base'

class App < Sinatra::Base

    get '/' do
        @title = "sinatra"
        @name = "index"
        erb :index
    end

    get '/:name' do
        @title = "#{params[:name]} - sinatra"
        @name = "#{params[:name]} page"
        erb :index
    end

end

App.run! :host => 'localhost', :port => 4567
