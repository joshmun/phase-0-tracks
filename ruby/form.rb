post = {
	date: "1/31/17",
	title: "A new world",
	author: "Josh Mun",
	body: "This is a test blog post"
}

p post

# Driver Code
puts "What is your title?"
title = gets.chomp
post[:title] = title

puts "What is your name?"
name = gets.chomp
post[:author] = name

puts "What do you want to say??"
blog = gets.chomp
post[:body] = blog

puts "Anything else?"
more = gets.chomp
post[:more] = more

p post

post[:author] + post[:title]

p post