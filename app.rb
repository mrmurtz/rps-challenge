require 'sinatra/base'
require_relative 'lib/computer.rb'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    computer = Computer.new
    @game = Game.create(player1, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/game' do
    @game.player1.choice(params[:player1_choice])
    @game.computer.random_choice
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
