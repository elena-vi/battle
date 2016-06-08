require 'sinatra/base'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    session[:player_2] = Player.new(params[:player_2])
    @@status = []
    redirect('/play')
  end

  get '/play' do
    @player_1_hp = session[:player_1].hp
    @player_1_name = session[:player_1].name
    @player_2_hp = session[:player_2].hp
    @player_2_name = session[:player_2].name
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
