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
	CREATE TABLE IF NOT EXISTS budgets(
	id INTEGER PRIMARY KEY,
	month VARCHAR(255),
	caldate VARCHAR(255),
	details VARCHAR(255),
	cost REAL, 
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES usernames(id)
	)
SQL

bdb.execute(create_usernames_table)
bdb.execute(create_budget_table)

## Methods ##
#----------------------LOGIN METHODS-------------------------#
## Creating New User Methods ##
def add_user(bdb, username)
	return "user already exists" if user_exists?(bdb, username)
	bdb.execute(<<-SQL
			INSERT INTO usernames (name) VALUES ("#{username}")
	SQL
	)
end

def user_exists?(bdb, username)
	users(bdb).each do |user|
		return true if user["name"] == username
	end
	false
end

## Checks username in username database
def users(bdb)
	bdb.execute(<<-SQL
		SELECT * FROM usernames
	SQL
	)
end

## Returning User Login Method ##
def user_id(bdb, username)
	user_id_num = nil
	users(bdb).each do |user|
		if user["name"] == username
			user_id_num = user["id"]
		break
		end
	end
	user_id_num
end

#-------------ENTERING NEW TRANSACTION METHODS--------------#
def transaction(caldate, details, cost)
	transaction_data = []
	[caldate, details, cost].each { |element| transaction_data << element }
	# transaction << caldate
	# transaction << details
	# transaction << cost
	transaction_data
end

def month_translater(transaction_data)
	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	caldate = transaction_data[0].split("/")
	month = caldate[0].to_i
	translated_month = months[month-1]
	transaction_data.insert(0, translated_month)
end
## Driver Code

add_user(bdb, "josh_mun")
p users(bdb)
p user_id_num = user_id(bdb, "josh_mun")
transaction_data = transaction("2/24/17", "Costco hot dogs", 5.69)
p month_translater(transaction_data)

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