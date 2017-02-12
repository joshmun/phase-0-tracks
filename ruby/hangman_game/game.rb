class Game
	attr_accessor :secret_word_array, :guess_letter, :available_guesses
	attr_reader :is_over, :goal, :bank_guess, :victory, :determination

	def initialize(secret_word)
		@is_over = false
		@secret_word_array = secret_word.split('')
		@available_guesses = @secret_word_array.length
		@available_guesses.times do |i|
			@goal = "_" * (i + 1)
		end
		@bank_guess = []
		@guess_letter = ""
		@victory = false
	# p "I am goal #{@goal}"
	end

	def store_guess(store)
		@bank_guess << store unless 
			@bank_guess.include?(store)
		puts "Letters guessed: #{@bank_guess}"
	end

	def remove_guesses(guess)
		# puts "I am guess class: #{guess.class}"
			if @secret_word_array.include?(guess)
				@available_guesses
			elsif bank_guess.include?(guess)
				@available_guesses
			elsif @goal.include?(guess)
				@available_guesses
			else @available_guesses -= 1
			end
		if @available_guesses == 0
			then @is_over = true
		end
		puts "Available guesses remaining: #{@available_guesses}"
	end

	def comparison(guess)
		@secret_word_array.each_with_index { |instance, position|
			if instance == guess
				@goal[position] = @secret_word_array[position]
			end
		}
		final_array = @goal.split('')
			if final_array == @secret_word_array
				@victory = true
			else @goal = final_array.join('')
			end
		@goal
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

	hangman.remove_guesses(guess_letter)
	
	puts hangman.comparison(guess_letter)

	hangman.store_guess(guess_letter)

	hangman.victory
	if hangman.victory == true
		puts "Congratulations! You're a rockstar!"
		break
	end
	if hangman.is_over == true
		puts "YOU LOSE. So sad. Goodbye."
		break
	end
end