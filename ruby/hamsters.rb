puts "What is your hamster's name?"
name = gets.chomp.to_s
puts "What's your volume level on a scale from 1-10?"
level = gets.chomp.to_i
puts "What is the fur color?"
fur = gets.chomp.to_s
puts "Is this hamster a good candidate for adoption? Y/N?"
candidate = !!gets.chomp
puts "What is the estimated age?"
age = gets.chomp
agei = age.to_i
if agei == 0
	puts nil
else puts age
end
puts "Hello your hamster's name is #{name}, your volume level is #{level}, it's fur color is #{fur}, Candidacy: #{candidate}, and it's estimated age is #{age}. Thank you!"