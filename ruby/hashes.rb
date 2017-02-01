#Pseudocode
#The program will ask the user these questions:
#client name
#age
# => convert to integoer
#number of children
# => convert to integoer
#decor theme
#Do you love sunshine?
#print the results and store in a hash
#ask the user if all the information is correct
#if not, provide same questions but as updating previous hash
# => no loop, but utilize new gets.chomp to update symbols
#if so, then skip by stating 'none'
#print the results and exit

#Driver Code
puts "Hello! Welcome to the designer intake form. Please tell me your name."
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children do you have? Please put 0 for none."
children = gets.chomp.to_i

puts "What decor theme do you enjoy?"
decor = gets.chomp

puts "Do you love sunshine?"
sunshine = gets.chomp

design = {
	name: name,
	age: age,
	children: children,
	decor: decor,
	sunshine: sunshine
}

p design
puts "Are there any mistakes? 'Yes' or 'none'."
mistakes = gets.chomp
	if mistakes == "none"
		p design
		p "Thank you!"
	else
		puts "Hello! Welcome to the designer intake form. Please tell me your name."
		name = gets.chomp
		design[:name] = name
		
		puts "What is your age?"
		age = gets.chomp.to_i
		design[:age] = age
		
		puts "How many children do you have? Please put 0 for none."
		children = gets.chomp.to_i
		design[:children] = children
		
		puts "What decor theme do you enjoy?"
		decor = gets.chomp
		design[:decor] = decor
		
		puts "Do you love sunshine?"
		sunshine = gets.chomp		
		design[:sunshine] = sunshine
	end
p design
