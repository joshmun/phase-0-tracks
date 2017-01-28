#Driver Code
puts "How many employees will you be processing?"
employees = gets.chomp.to_i
current_employee = 1

while current_employee <= employees
	puts "What is your name?"
	name = gets.chomp

	puts "How old will you be this year?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	born = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	health = gets.chomp

		until allergy == "Done" || allergies == "done"
			puts "Please name any allergies you have one at at time, when you are finished please enter 'done'."
			allergy = gets.chomp
			p allergies = allergies + ", " + allergy
			if allergy = "Sunshine", "sunshine"
				then puts "Probably a vampire."
				break
			end
		end


	#Boolean Conidition Declarations
	#Year comparison against age
	year = 2017
	born_true = (year - born) == age
	#if born_true == born
	#	p "You are a vampire!"
	#end

	#Setting variables
	yes = "yes", "Yes"
	no = "no", "No"

	#Garlic Bread
	gb_true = garlic_bread == yes

	#Insurance
	health_true = health == yes

	#If the employee got their age right, 
	#and is willing to eat garlic bread 
	#or sign up for insurance, 
	#the result is “Probably not a vampire.”

		case
			when born_true && (gb_true || health_true)
				p "Probably not a vampire."

		#If the employee got their age wrong, 
		#and hates garlic bread or waives insurance, 
		#the result is “Probably a vampire.”

			when !born_true && (!gb_true || !health_true)
				p "Probably a vampire."

		#If the employee got their age wrong, 
		#hates garlic bread, and doesn’t want insurance, 
		#the result is “Almost certainly a vampire.”

			when !born_true && !gb_true && !health_true
				p "Almost certainly a vampire."

		#Even if the employee is an amazing liar otherwise, 
		#anyone going by the name of “Drake Cula” or “Tu Fang” 
		#is clearly a vampire, because come on. 
		#In that case, you should print “Definitely a vampire.”

			when name == "Drake Cula" || name == "Tu Fang"
				p "Definitely a vampire."

			else puts "Results inconclusive."
		end
	current_employee += 1
end