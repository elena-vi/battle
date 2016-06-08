require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    @@status = []
    redirect('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @game_status = @@status
    erb(:game)
  end

  post '/attack' do 
    @@status << "#{params[:target]} got attacked"
    # p @status
    redirect('/play')
  end

  run! if app_file == $0
end
