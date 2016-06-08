require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    erb(:game)
  end

  run! if app_file == $0
end
