# Business Logic #

## Requiring Gems
require 'sqlite3'

## Setting out our database
bdb = SQLite3::Database.new("budget.db")
bdb.results_as_hash = true

## SQL Commands
create_username_table = <<-SQL
  CREATE TABLE IF NOT EXISTS username_table(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_budget_table = <<-SQL
	CREATE TABLE IF NOT EXISTS budget_table(
	id INTEGER PRIMARY KEY,
	month INT,
	caldate VARCHAR(255),
	transaction INT, 
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES username_table(id)
	)
SQL

# Methods #
## Create Method
def create(bdb, username, create_username_table)
	bdb.execute(create_username_table)
	bdb.execute(<<-SQL
		INSERT INTO username_table (name) VALUES (username)
	# 	CREATE UNIQUE INDEX IF NOT EXISTS username ON username_table(name)
	SQL
	)
	# puts "I've created a unique index"
	# bdb.execute(<<-SQL
	# 	INSERT INTO username_table(name) VALUES (username)
	# SQL
	# )
	# puts "I've inserted into the username table"
#   INSERT INTO username (name) 
#   SELECT * FROM (SELECT username) AS tmp
#   WHERE NOT EXISTS (
#   	SELECT name FROM username WHERE name = username
#   	) LIMIT 1;
# SQL
# )
end

## Login Method
def returning(bdb, username)
end

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

puts "Hello! Are you a returning user or would you like to create a username?"
login = gets.chomp
confirmation = nil

while (login != "create" || login != "returning")
	if login == "create"
		until confirmation == "yes"
		puts "Please enter a username"
		username = gets.chomp
		puts "Please confirm 'yes' if #{username} is correct."
		confirmation = gets.chomp
			if confirmation == "yes"
				create(bdb, username, create_username_table)
			end
		end
	break	
	elsif login == "returning"
		puts "Welcome! Please enter your username."
		username = gets.chomp
		returning(bdb, username)
		break
	else puts "I'm sorry, I didn't understand that. Are you returning or would you like to create a username?"
		login = gets.chomp
	end
end