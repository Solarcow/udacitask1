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
    		p print
    	end
    	p ("*" * 33)
    end
    def completed_status(location,status)
    	@items
    end
    def update_title(new_title)
    	@title = new_title
    end
end

class Item
	 attr_accessor :description, :completed_status
    # methods and stuff go here
    def initialize(item_description)
        @description = item_description
        @completed_status = false
     end
end
