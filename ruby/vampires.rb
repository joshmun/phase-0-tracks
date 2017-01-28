#Driver Code
puts "What is your name?"
name = gets.chomp

puts "How old will you be this year?"
age = gets.chomp.to_i

puts "What year were you born?"
born = gets.chomp.to_i

puts = "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts = "Would you like to enroll in the company's health insurance?"
health = gets.chomp

#Boolean Conidition Declarations
#Year comparison against age
year = 2017
born_true = year - age
born_false != year - age
#if born_true == born
#	p "You are a vampire!"
#end

#Setting variables
yes = "yes"
no = "no"

#Garlic Bread
gb_true = garlic_bread == yes
gb_false = garlic_bread == no

#Insurance
health_true = health == yes
health_false = health == no

#If the employee got their age right, 
#and is willing to eat garlic bread 
#or sign up for insurance, 
#the result is “Probably not a vampire.”

if born_true && (gb_true || health_true)
	p "Probably not a vampire."
end

#If the employee got their age wrong, 
#and hates garlic bread or waives insurance, 
#the result is “Probably a vampire.”

if born_false && (gb_false || health_false)
	p "Probably a vampire."
end

#If the employee got their age wrong, 
#hates garlic bread, and doesn’t want insurance, 
#the result is “Almost certainly a vampire.”

if born_false && gb_false && health_false
	p "Almost certainly a vampire."
end

#Even if the employee is an amazing liar otherwise, 
#anyone going by the name of “Drake Cula” or “Tu Fang” 
#is clearly a vampire, because come on. 
#In that case, you should print “Definitely a vampire.”

if name = "Drake Cula", "Tu Fang"
	p "Definitely a vampire."
end

