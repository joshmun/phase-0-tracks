class Game
	attr_accessor :secret_word_array, :guess_letter, :available_guesses
	attr_reader :is_over, :final_array, :bank_guess, :victory, :determination

	def initialize(secret_word)
		@is_over = false
		@secret_word_array = secret_word.split("")
		 # p "I am a secret word array: #{@secret_word_array}"
		@available_guesses = @secret_word_array.length
		 # p "I am available guesses: #{@available_guesses}"
		@available_guesses.times do |i|
			@final_array = "_" * (i + 1)
		end
		@bank_guess = []
		@guess_letter = ""
	# p "I am final_array #{@final_array}"
	end

	def store_guess(store)
		@bank_guess << store unless 
			@bank_guess.include?(store)
	end

	def remove_guesses(guess)
		# puts "I am guess class: #{guess.class}"
			if @secret_word_array.include?(guess)
				@available_guesses
			elsif bank_guess.include?(guess)
				@available_guesses
			elsif @final_array.include?(guess)
				@available_guesses
			else @available_guesses -= 1
			end
		if @available_guesses == 0
			then @is_over = true
		end
	end

	# def game_over
	# 	puts "Game Over, available_guesses: #{@available_guesses}"
	# 		if @available_guesses == 0
	# 			then @is_over = true
	# 		end
	# end

	def comparison(guess)
		counter = -1
		@secret_word_array.each { |instance|
			p "I am checking secret word array: #{secret_word_array}"
			puts "I am checking guess letter: #{guess}"
			if instance == guess
				puts "I am checking the if statement here"
				puts "I am checking the instance: #{instance}"
				puts "I am checking the guess: #{guess}"
				counter += 1
				@guess_letter = @secret_word_array.at(counter)
				@final_array[counter] = guess
			end
		}
	@final_array
	end

	def victory
		if @final_array == @secret_word_array
			@victory = true
		end
	end
end

# User Interface
puts "Welcome to Hangman! What is your secret word?"
secret_word = gets.chomp
hangman = Game.new(secret_word)
puts "Thank you, please pass this to the 2nd player."

while !hangman.is_over
	puts "2nd player, please guess a letter!"
	guess_letter = gets.chomp
	puts "I am guess letter: #{guess_letter}"

	hangman.remove_guesses(guess_letter)
	# if @available_guesses == 0
	# 	then @is_over = true
	# 	break
	# end
	# puts "What is available guesses between methods? #{@available_guesses}"
	# hangman.game_over
	 puts "is over: #{@is_over}"

	
	puts hangman.comparison(guess_letter)

	hangman.store_guess(guess_letter)

	hangman.victory
		if @victory == true
			puts "Congratulations! You're a rockstar!"
			break
		end
end

puts "YOU LOSE. So sad. Goodbye."

