

class House
	attr_accessor :floors, :windows, :value
	attr_reader :address

	def initialize(floors, windows, value, address)
		@floors = Integer(floors)
		@windows = Integer(windows)
		@value = Float(value)
		@address = address
	end

	def print_info
		puts "Your house has #{floors} floors, #{windows} windows, #{value} value, and is located at #{address}"
	end
end