class TodoList
	attr_accessor :title, :items
    # methods and stuff go here
    def initialize(list_title)
    	@title = list_title
    	@items = Array.new
    end
    def add_item(new_item)
        item = Item.new(new_item)
        @items.push(item)
    end
    def remove_item(item_location)
    	@items.delete_at(item_location)
    end
    def display
    	p @title
    	@items.each do |print|
    		print.clean_print
    		p ("-" * 33)
    	end
    end
    def update_complete(location)
    	@items[location].completed?
    end
    def update_title(new_title)
    	@title = new_title
    end
    def file_save
    	@save = File.new("task list.txt", "w+")
    	@save.puts(@title)
    	@save.write(@items)
    	@save.close
    end
end

class Item
	 attr_accessor :description, :completed_status
    # methods and stuff go here
    def initialize(item_description)
        @description = item_description
        @completed_status = false
        @time_created = Time.now.strftime("%H:%M")
     end
     def completed?
     	@completed_status = true
     	@completed_time = Time.now.strftime("%H:%M")
     end
     def clean_print
     	p "Test Description: #{@description}"
     	p "Completed Status: #{@completed_status}"
     	p "Time Created: #{@time_created}"
     	if @completed_status == true 
     		p "Time Completed #{@completed_time}"
     	end
     end
end
