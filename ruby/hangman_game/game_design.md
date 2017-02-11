# Hangman Pseudocode

## Big Picture
1. User Input
2. Game Class

### How many declared attributes?


### How many class methods?
#### Starting the Game
1. **Initialize** print to ask user for *secret word*
2. Receives *secret word*, splits into elements, and stores in **attr accessible** *secret word array* (refer to this for index value later)
3. Method that determines # of available guessed based on secret word length, stores integer in **attr readable** available_guesses*
4. Grab length of secret word and that many times, store "_" in **attr accessible** final array* 

#### Playing the Game
5. Receive *guessed letter*, store in *guess* attr readable array
6. Compare the *guessed letter* against the *secret word* -> if *GL* == *SW* then store this as boolean value, *match*
	- if not *match*, then -1 from *available_guesses*
	- if *available_guesses* = 0, then print "YOU LOSE. So sad. Goodbye." and *break* the code to end all processes
7. If *SW* includes *GL*, then grab index value of *SW* off criteria *GL*, store as integer *sw_position* 
	- replace *final array* index of *sw_position* with *GL* letter
8. Method that if secret word includes guess letter, stores in final word array
8. Method that stores guessed letter in guess array 

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

