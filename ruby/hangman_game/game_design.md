# Hangman Pseudocode

## Big Picture
1. User Input
2. Game Class

### How many declared attributes?
**ATTR READABLE** 
- :match
- :bank_guess
- :is_over
- :available_guesses
- :final_array

### How many class methods?
#### Starting the Game
1. **Initialize** with one parameter for user input *secret_word*
	- @is_over = false
	- Receives *secret word*, splits into elements, and stores in **attr accessible** *secret word array* (refer to this for index value later)
	- determines # of available guesses based on secret word length, stores integer in **attr readable** *available_guesses*
	- Grab length of secret word and that many times, store "_" in **attr accessible** *final_array* 

#### Dealing with Available Guesses
1. Method: (*available guess* - 1) unless
	- *SWA* includes *GL* or
	- *bank_guess* includes *GL* or
	- *final_array* includes *GL*
2. If *available_guesses* = 0, then return is_over = true

#### Comarpison Method
<!-- 1. Compare the *guessed letter* against the *secret word* -> if *GL* == *SW* then store this as boolean value, **attr readable** *match* -->
2. If *SW* includes *GL*, then grab index value of *SW* off criteria *GL*, store as integer *sw_position* 
	- replace *final_array* index of *sw_position* with *GL* letter
3. print *final_array*

#### When to Store the Guesses
1. push *GL* into *bank guess* unless *bankguess* includes *GL*

#### High Level Comparison Method
1. If guess_array == secret_word then victory = "Congratulations!"
2. Print Victory

#### User Interface
1. print welcome to the game and instantiate a new instance of game class
2. print to ask user for *secret word*
3. Execute initialize method with *secret word*

4. While *available_guesses* != 0
	- print to ask 2nd user for his *GL*
	- execute Dealing with Available Guesses method
		- if *is_over* = true, print "YOU LOSE> So sad. Goodbye."
		- end	
	- execute comparison method
	- execute when to store guesses method
	- execute High Level Comparison method
		+ if victory, then break
		+ end
	end

5. Print "Thanks for playing!"

<!-- 4. If *available_guesses* != 0
	- then print to ask 2nd user for his *GL*
	- execute dealing with available guesses method
	- execute when to store guesses method
	- execute comparison method
	- execute High Level Comparison method
	- else print "YOU LOSE> So sad. Goodbye." -->

<!-- OLD PSEUDOCODE:
## Operations
**User Input**
1. Program requests a word from User
2. User enters a word
3. Program stores this word in array

**Program**
1. Program invites second user to guess the word, one letter at a time
2. Guess array is initialized
3. Until loop is initialized (final == secret_word)
4. Guess counter is initialized at 0
5. User enters a letter
6. Compares if the guess array includes this letter
7. Compares if the guess array includes this letter
8. if there is a match,  
9. Letter is stored into guess_array

##Class Approach##

###ATTR declarations###
* Declare a readable attribute: guess count, 
* Declare an accessible attribute: guessed letters,

###Initialize Method###
* Initialized guess array - @guess_count = 0
* Initialize secret word array @secret_word = gets.chomp.split("")
* Initialize 

 -->