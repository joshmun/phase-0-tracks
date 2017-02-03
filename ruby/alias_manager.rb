#Pseudocode
#Secret Agent Name Generator

#Setting Up:
# => Initialize secret_agents hash data structure, two arrays {:agent, :converted}
# => Initialize final_name empty string for after conversion
# => Initialize restart empty string to hold user input to restart method

#Secret Agent Methods:
#Initialize until loop, until restart == 'quit' then execute methods
#Initialize driver code, request user their first and last name
# => define agent = gets.chomp
# Shovel agent into :agent array of secret_agents hash

#Swap Method:
#define method swap(name)
#split by (" ") to separate name into 2 elements
#reverse and store in new array
#join the new array by (" ")
#end
#call the method, and store the value in swap_real

#Vowel Advance Method:
#define method vow_adv(letters)
#Initialize vowels array containing only vowels, aeiou
#rotate the vowels and store in new array
# => this represents vowels.index + 1
#Initialize index counter 
# => we will refer to this count to match index replacements
#Initialize nxt_vowel
# => store vowels.index + 1 in this string
#Downcase and split swap_real("") into new array (down_array)
#Initialize .each loop 
# => if an element from down_array is contained in vowels array
#then grab that vowel index
# => store vowel index as new integer vow_indx
#Call the rotated vowels array
# => and grab the indexed element matching the original vow_indx
# => store this vowel+1 vowel in new string nxt_vowel
#replace down_array indexed at index counter
# => replace with nxt_vowel
#end if then
#increment index counter
#end each loop
#return and join down_array into string ("")
#end method
#store method call value as vowel_change
#return vowel_change

#Consonant Advance Method:
#define new method cons_adv(letters)
#initialize 


secret_agent = {
	agent: [],
	converted: []
}

final_name = ""
restart = ""

until restart == "quit" do

	##Driver Code
	puts "Hello, welcome to the secret agent name converter. Please enter your first and last name."
	agent = gets.chomp
	
	secret_agent[:agent]<<agent
	
		def swap(name)
			arr_name = name.split(" ")
			rev_arr = arr_name.reverse
			rev = rev_arr.join(" ")
		end
		swap_real = swap (agent)
		swap_real #First and Last Name Swapped
		
		
		def vow_adv(letters)
			vowels = ["a", "e", "i", "o", "u"]
			rot_vowels = vowels.rotate
			index_counter = 0
			nxt_vowel = ""
			down_array = letters.downcase!.split("") #downcase and creates array of user input
				down_array.each do |letter|
					if vowels.include? (letter)
						vow_indx	= vowels.index(letter)
			
						#New Code, with edge case
						nxt_vowel = rot_vowels[vow_indx]
						down_array[index_counter] = nxt_vowel
			
						#Old Code, without edge case consideration
						# vow_indx_next = vow_indx + 1
						# nxt_vowel = vowels[vow_indx_next]
						# down_array[index_counter] = nxt_vowel
					end
				index_counter += 1
				end
			down_array.join("")
		end
		vowel_change = vow_adv (swap_real)
		vowel_change #Vowels advanced in agent name
		
		
		def cons_adv(letters)
			consonant = "BCDFGHJKLMNPQRSTVWXYZ"
			consonant_array = consonant.downcase!.split("")
			rot_cons = consonant_array.rotate
			index_counter = 0
			letters_array = letters.split("")
				letters_array.each do |letter|
					if consonant_array.include? (letter)
					cons_indx = consonant_array.index(letter)
		
					#New Code, with edge case
					nxt_cons = rot_cons[cons_indx]
					letters_array[index_counter] = nxt_cons
		
						#Old Code, without edge case consideration
						# nxt_cons_indx = cons_indx + 1
						# nxt_cons = consonant_array[nxt_cons_indx]
						# letters_array[index_counter] = nxt_cons
					end
				index_counter += 1
				end
			secret_name = letters_array.join("") #combined name without capitalized
			split_array = secret_name.split(" ")
			cap_word = split_array.map! { |word| word.to_s.capitalize}
			cap_word.join(" ")
		end
		final_name = cons_adv (vowel_change) #Add consonant advance with capitalizaton
		secret_agent[:converted]<<final_name
		
	puts "Your new secret agent name is #{final_name}!" 
	puts "If you accept, exit by entering 'quit'. Otherwise, enter again."
	restart = gets.chomp
		if restart == "quit" #Provides user to loop program until quit
			for i in 0...secret_agent[:agent].length
				puts "#{secret_agent[:converted][i]} is really #{secret_agent[:agent][i]}."
			end
			break
		else #Continues loop if user enters
		end
end