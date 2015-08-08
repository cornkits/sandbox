require 'yaml'

def initialize_player
	@player = YAML.load_file("player.yml")

	puts "You are:"
	puts @player['name']
end

def make_decision(description, player_options)
	puts description

	valid_options = player_options.keys

	player_options.each do |option, action_result|
		puts "#{option}: #{action_result["action"]}"
	end

	valid_input = false
	until valid_input
		action = gets.strip
		if valid_options.include?(action)
			puts player_options[action]["result"]
			valid_input = true
		else
			puts "Try again clown."
		end
	end
end

initialize_player
puts "Start Game! --------------------------------------"
puts ""

description = "You're in a room. It's dark. There is a box. What do you do?"
room_options = {
	"A" => {"action" => "Run away", "result" => "You ran away"},
	"B" => {"action" => "Hit the box", "result" => "The box is destroyed!"},
	"C" => {"action" => "Lift the box", "result" => "If only you were strong enough"}
}
	
make_decision(description, room_options)

puts " "
puts " "

forest_description = "You're in a forest. It's bright. There is a tree. What do you do?"
forest_options = {
	"1" => {"action" => "Run away", "result" => "You ran away"},
	"2" => {"action" => "Hit the tree", "result" => "The box is destroyed!"},
	"3" => {"action" => "Dig a hole", "result" => "If only you were strong enough"},
	"4" => {"action" => "Bring me a shrubbery", "result" => "Where's my shrubbery?"}
}


	
make_decision(forest_description, forest_options)

