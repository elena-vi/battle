class Player

	attr_reader :name, :hp, :field_state

	def initialize(name)
		@name = name
		@hp = 100
	end

	def attacked
		@hp -= 10
	end

	def enabled
		@field_state = ""
		self
	end
	def disable
		@field_state = "disabled"
	end
end
