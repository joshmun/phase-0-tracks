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
	p answer
end

# User Interface
calc = ""
calc_count = 0
ops = {
	compute: [],
	answer: []
}
until calc == 'done'
	puts "Please enter your calculation. Enter 'done' to finish."
	calc = gets.chomp
	ops[:compute].push(calc)
		elements = calc.split("")
		num1 = elements[0].to_i
		operator = elements[1]
		num2 = elements[2].to_i
	answer = calculator(num1, operator, num2)
	ops[:answer].push(answer)
	calc_count += 1
		if calc == 'done'
		puts "#{calc_count-1} calculations performed:"
			pcycle = 0
				until pcycle == calc_count do
				puts "#{ops[:compute][pcycle]} = #{ops[:answer][pcycle]}"
				pcycle += 1
			end
		break
		end
	if answer == nil
	puts "Sorry, What is the first number in your calculation?"
	num1 = gets.chomp.to_i
	
	puts "What is your operator?"
	operator = gets.chomp
	
	puts "What is your second number?"
	num2 = gets.chomp.to_i
	
	broken = "#{num1}#{operator}#{num2}"
	ops[:compute].push(broken)
	
	new_answer = calculator(num1, operator, num2)
	ops[:answer].push(new_answer)
	end
end

# #Driver Code
# p calculator (3, '+', 2)
# p calculator (100, '-', 10)
# p calculator (23, '*', 3)
# p calculator (100, '/', 10)