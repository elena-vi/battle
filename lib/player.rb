class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attacked
    @hp -= 10
  end

  def enabled
  end 
end






# if $game.current_player == $game.player1
#       @disable_player2 = "disabled"
#       @disable_player1 = ""
#       @current_player = @player_1_name
#     else
#       @disable_player1 = "disabled"
#       @disable_player2 = ""
#       @current_player = @player_2_name
# end