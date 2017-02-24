# Budget Pseudocode

## Logging In Methods

What are we accomplishing?
The logging in method will return the usernames primary key ID and store that

What methods are required?
* checks username against username table
* grabs the ID of username and stores

## Entering New Transaction Methods

What are we accomplishing?
The ability to enter and store details of a single transaction.

Transaction:
id, month (string), date (string), details (String), cost (real/float), user_id (int from login method user_id) 

Methods:
* receives date, details, cost, spits out an array
* grabs the date, splits, grabs first element
* month translator
	- array of month names, each number corresponds to index+1 of month array
* store the user_id from the method into the transaction array
* SQL method to insert the transaction array accordingly into the database