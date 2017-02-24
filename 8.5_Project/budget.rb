# Business Logic #

## Requiring Gems ##
require 'sqlite3'

## Initializing database ##
bdb = SQLite3::Database.new("budget.db")
bdb.results_as_hash = true

## SQL Commands ##
create_usernames_table = <<-SQL
  CREATE TABLE IF NOT EXISTS usernames(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_budget_table = <<-SQL
	CREATE TABLE IF NOT EXISTS budget(
	id INTEGER PRIMARY KEY,
	month INT,
	caldate VARCHAR(255),
	transaction INT, 
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES usernames(id)
	)
SQL

bdb.execute(create_usernames_table)
bdb.execute(create_budget_table)


# Methods #

## Creating New User Methods ##
def add_user(bdb, username)
	return "user already exists" if user_exists?(bdb, username)
	bdb.execute(<<-SQL
			INSERT INTO usernames (name) VALUES ("#{username}")
	SQL
	)
end

def users(bdb)
	bdb.execute(<<-SQL
		SELECT * FROM usernames
	SQL
	)
end

def user_exists?(bdb, username)
	users(bdb).each do |user|
		return true if user["name"] == username
	end
	false
end


## Login Methods ##



def returning(bdb, username)
end


## Select users from usernames


## Driver Code

add_user(bdb, "josh_mun")
p users(bdb)



# users = users(bdb)


# create_budget_table = <<-SQL
# 	id INTEGER PRIMARY KEY,
# 	month INT,
# 	caldate VARCHAR(255),
# 	transaction INT, 
# 	user_id INT,
# 	FOREIGN KEY (user_id) REFERENCES username(id)
# SQL


# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS kittens(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     age INT
#   )
# SQL


# Login User Interface
## Asks user to login or create a username. If creating, executes create method, if logging in, executes returning method

# puts "Hello! Are you a returning user or would you like to create a username?"
# login = gets.chomp
# confirmation = nil

# while (login != "create" || login != "returning")
# 	if login == "create"
# 		until confirmation == "yes"
# 		puts "Please enter a username"
# 		username = gets.chomp
# 		puts "Please confirm 'yes' if #{username} is correct."
# 		confirmation = gets.chomp
# 			if confirmation == "yes"
# 				create(bdb, username, create_username_table)
# 			end
# 		end
# 	break	
# 	elsif login == "returning"
# 		puts "Welcome! Please enter your username."
# 		username = gets.chomp
# 		returning(bdb, username)
# 		break
# 	else puts "I'm sorry, I didn't understand that. Are you returning or would you like to create a username?"
# 		login = gets.chomp
# 	end
# end