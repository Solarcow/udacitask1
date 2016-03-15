require_relative 'todolist.rb'

# Creates a new todo list
thing = TodoList.new("Things to Learn")
# Add four new items
thing.add_item("test 1")
thing.add_item("test 2")
thing.add_item("test 3")
thing.add_item("test 4")
# Print the list
thing.display
# Delete the first item
thing.remove_item(0)
# Print the list
thing.display
# Delete the second item
thing.remove_item(1)
# Print the list
thing.display
# Update the completion status of the first item to complete
thing.update_complete(0)
# Print the list
thing.display
# Update the title of the list
thing.update_title("Pants")
# Print the list
thing.display
thing.file_save
