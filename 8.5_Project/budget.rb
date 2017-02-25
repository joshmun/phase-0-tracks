# Business Logic #

## Requiring Gems ##
require 'sqlite3'
require 'table_print'

## Initializing database ##
bdb = SQLite3::Database.new("budgets.db")
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
## Building the Transaction Array ##
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
	translated_month += " 20#{caldate[2]}"
	transaction_data.insert(0, translated_month)
end

def add_user_id(transaction_data, user_id_num)
	transaction_data.insert(-1, user_id_num)
end

## Storing the Transaction Array ##
def store_transaction!(bdb, transaction_data)
	bdb.execute("INSERT INTO budgets (month, caldate, details, cost, user_id) VALUES (?, ?, ?, ?, ?)", [transaction_data.each { |data| data}]
		)
end

#--------------------VIEWING TRANSACTIONS---------------------#
def view_all_transactions(bdb, user_id_num)
	bdb.execute(<<-SQL
		SELECT budgets.month, budgets.caldate, budgets.details, budgets.cost, usernames.name FROM budgets JOIN usernames ON budgets.user_id="#{user_id_num}"
		SQL
		)
end

def view_transactions_month(bdb, user_id_num, month)
	bdb.execute(<<-SQL
		SELECT budgets.month, budgets.caldate, budgets.details, budgets.cost, usernames.name FROM budgets JOIN usernames ON budgets.user_id = "#{user_id_num}" WHERE budgets.month = "#{month}" 
		SQL
		)
end

def view_transactions_caldate(bdb, user_id_num, caldate)
	bdb.execute(<<-SQL
		SELECT budgets.month, budgets.caldate, budgets.details, budgets.cost, usernames.name FROM budgets JOIN usernames ON budgets.user_id = "#{user_id_num}" WHERE budgets.caldate = "#{caldate}" 
		SQL
		)
end

def average_month(bdb, month)
	tot_expenditures = 0
	tot_month_transactions = bdb.execute(<<-SQL
		SELECT * FROM budgets WHERE budgets.month = "#{month}"
		SQL
		)
	num_of_transactions = tot_month_transactions.length
		tot_month_transactions.each do |entry|
			tot_expenditures += entry["cost"]
		end
	average_raw = tot_expenditures/num_of_transactions
	average = average_raw.round(2)
	"You had #{num_of_transactions} transactions this #{month} with an average of $#{average} spent per day."
end

#----------------------USER INTERFACE-------------------------#
puts "Hello! Are you a RETURNING user or would you like to CREATE a username?"
login = gets.chomp
confirmation = nil

## LOGIN ##
while (login != "create" || login != "returning")
	if login == "create"
		until confirmation == "yes"
		puts "Please enter a username"
		username = gets.chomp
		puts "Please confirm 'yes' if #{username} is correct."
		confirmation = gets.chomp
			if confirmation == "yes"
				add_user(bdb, username) if user_exists?(bdb, username) == false
			end
		end
	puts "Please now login:"
	username = gets.chomp
	user_id_num = user_id(bdb, username)
	break	
	elsif login == "returning"
		puts "Welcome! Please enter your username."
		username = gets.chomp
		user_id_num = user_id(bdb, username)
		break
	else puts "I'm sorry, I didn't understand that. Are you RETURNING or would you like to CREATE a username?"
		login = gets.chomp
	end
end

## OPTIONS ##

log_off = ""
while log_off != "log off"
	puts "What would you like to do today? I can:"
	puts "1. Enter a New Transaction"
	puts "2. View All Transactions"
	puts "3. View Transactions by Month"
	puts "4. View Transactions by Caldate"
	puts "5. Tell you your average spending per month"
	
	option = gets.chomp.to_i
	case option
		when 1
			puts "Enter a transaction."
			puts "Please enter the caldate. Example: 2/29/17"
			caldate = gets.chomp
			puts "Please enter details. Example: Costco"
			details = gets.chomp
			puts "Please enter the cost. Example: 19.72. Do not enter $."
			cost = gets.chomp.to_f
	
			transaction_data = transaction(caldate, details, cost)
			month_translater(transaction_data)
			add_user_id(transaction_data, user_id_num)
			store_transaction!(bdb, transaction_data)
			puts "Entry successfully stored."
	
		when 2
			puts "Here is a history of all of your transactions."
			all_view = view_all_transactions(bdb, user_id_num)
			# puts "I am user_id_num: #{user_id_num}"
			tp all_view, "month", "caldate", "details", "cost", "name"
			# puts all_view
	
		when 3
			puts "Please enter the month you'd like to view. Example: February 2017."
			month = gets.chomp
			month_view = view_transactions_month(bdb, user_id_num, month)
			tp month_view, "month", "caldate", "details", "cost", "name"
	
		when 4
			puts "Please enter the caldate you'd like to view. Example: 2/17/17."
			caldate = gets.chomp
			caldate_view = view_transactions_caldate(bdb, user_id_num, caldate)
			tp caldate_view, "month", "caldate", "details", "cost", "name"
		
		when 5
			puts "You selected: average spending."
			puts "Please enter the month you'd like to view. Example: February 2017."
			avg_month = gets.chomp
			p average_month(bdb, avg_month)
		else
			puts "Would you like to log off, or view more options?"
			log_off = gets.chomp
			break
	end
	puts "Would you like to log off, or view more options?"
	log_off = gets.chomp
end

puts "Thanks for using the Budgeting Project. Have a great day!"

#----------------------Driver Code-------------------------#
# Driver Code

# add_user(bdb, "josh_mun")
# users(bdb)
# user_id_num = user_id(bdb, "josh_mun")
# # transaction_data = transaction("2/24/17", "Costco hot dogs", 5.69)
# # transaction_data2 = transaction("2/21/17", "Cash N Carry plates", 20)
# # transaction_data3 = transaction("2/19/17", "Dick's Burgers", 7.56)
# # month_translater(transaction_data)
# # month_translater(transaction_data2)
# # month_translater(transaction_data3)
# # add_user_id(transaction_data, user_id_num)
# # add_user_id(transaction_data2, user_id_num)
# # add_user_id(transaction_data3, user_id_num)
# # store_transaction!(bdb, transaction_data)
# # store_transaction!(bdb, transaction_data2)
# # store_transaction!(bdb, transaction_data3)

# all_view = view_all_transactions(bdb, user_id_num)
# tp all_view, "month", "caldate", "details", "cost", "name"

# month_view = view_transactions_month(bdb, user_id_num, "February 2017")
# tp month_view, "month", "caldate", "details", "cost", "name"

# caldate_view = view_transactions_caldate(bdb, user_id_num, "2/21/17")
# tp caldate_view, "month", "caldate", "details", "cost", "name"

# p average_month(bdb, "February 2017")