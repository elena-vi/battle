class Game
	attr_reader :player_1, :player_2
	def initialize player1, player2
		@player_1 = player1
		@player_2 = player2
		@current = @player_1
	end

	def attack player
		player.attacked
	end

	def switch
		if @current_player == @playe_r1
			@current_player = @player_2.enable
		else
			@current_player = @player_1.enable
		end
	end

end
