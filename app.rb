require 'sinatra/base'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @@player_1 = Player.new(params[:player_1])
    @@player_2 = Player.new(params[:player_2])
    @@status = []
    redirect('/play')
  end

  get '/play' do
    @player_1_hp = @@player_1.hp
    @player_1_name = @@player_1.name
    @player_2_hp = @@player_2.hp
    @player_2_name = @@player_2.name
    @game_status = @@status
    erb(:game)
  end

  post '/attack' do
    @@status << "#{params[:target]} got attacked"
    if params[:target] == @@player_1.name
      @@player_1.attacked
    else
      @@player_2.attacked
    end
    redirect('/play')
  end

  run! if app_file == $0
end
