require 'sqlite3'

db = SQLite3::Database.new("budget.db")
db.results_as_hash = true

# Create Method
def create(username)
end

# Login Method
def login(username)
end

create_budget_table = <<-SQL
	id INTEGER PRIMARY KEY,
	month INT,
	caldate VARCHAR(255),
	transaction INT, 
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES username(id)
SQL


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL


# User Interface
puts "Hello! Are you a returning user or would you like to create a username?"
login = gets.chomp

if login == "create"
	puts "Please enter a username"
	username = gets.chomp
