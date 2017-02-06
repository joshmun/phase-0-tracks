def calculator(num1, operator, num2)
	case 
	when operator == '+'
		answer = num1 + num2
	when operator == '-'
		answer = num1 - num2
	when operator == '*'
		answer = num1 * num2
	when operator == '/'
		answer = num1 / num2
	end
	puts answer
end

#Driver Code
quit = ""
until quit == 'quit'
puts "What is the first number in your calculation?"
num1 = gets.chomp.to_i

puts "What is your operator?"
operator = gets.chomp

puts "What is your second number?"
num2 = gets.chomp.to_i

calculator(num1, operator, num2)

puts "Please enter 'quit' to end, or enter to begin again."
quit = gets.chomp
end