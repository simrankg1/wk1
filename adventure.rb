story_hash = { "question" => "Welcome to the haunted hotel. What room would you like to go to?",
"room 1" => "you're dead",
"room 2" => {"question" => "You picked a good room. What would you like to do?",
			 "sleep" => "You're rested for the morning",
			 "stay up all night" => "You might have anxiety issues."
			}
}


simran_story = {
	"question" => "What do you want to eat?",
	"chineese" => { "question" => "Do you want noodles or orange chicken?",
					"noodles" => "You're safe",
					"orange chicken" => "You're sick"
				},
	"american" => "You've got a heart attack buddy",
	"thai" => "Your stomach loves you!"
}


menu_app = {
	"question" => "Welcome to Dan's Restaurant what would you like to order first?",

	"beverage" => { "question" => "What will you be having to drink?",
					"Cola" => "That's good stuff",
					"Tea" => "That's soothing!",
					"Coffee" => "That's good to wake up"
			},
	"entree"  => { "question" => "What will you be having to eat?",
					"Hamburgers" => "Those are ridiculous",
					"Fries" => "Those are really cheesy",
					"Pizza" => "That's good to wake up"
			}
}


class Adventure

	def initialize(story_hash)
		@story_hash= story_hash
	end

	def prompt(question, options)
		puts question 
		puts "#{options}"
		res= gets.chomp
	end

	def prompt_n_chomp(question,options)
		res= prompt(question, options)

		until options.include?(res)
			puts "your response was invalid"
			res = prompt(question, options)
		end
		res

	end


	# takes the `curr_story_hash` and grabs all keys EXCEPT  the "question" key
	def get_options(curr_story_hash)
		puts curr_story_hash.keys
	 	curr_story_hash.keys.select {|x| x != "question"}
	end

	def start()
		curr_story_hash = @story_hash
		question = curr_story_hash["question"]
		options = get_options(curr_story_hash)

		until options.nil?
			res = prompt_n_chomp(question, options)

			if curr_story_hash[res].is_a?(Hash)
				curr_story_hash = curr_story_hash[res]
				question = curr_story_hash["question"]
				options = get_options(curr_story_hash)
			else
				puts curr_story_hash[res] 
				options = nil

			end
		end

			"END OF STORY!!!"

	end

end

adv = Adventure.new(menu_app)
adv.start()