# To Do List

class TodoList
	attr_accessor :get_items

	def initialize(things_to_do)
		puts "Initializing a list..."
		@get_items = things_to_do
	end

	def add_item(new_item)
		@get_items << new_item
	end

	def delete_item(deleted)
		@get_items.delete(deleted)
	end

	def get_item(x)
		@get_items[x]
	end
end

