class Exchange < ActiveRecord::Base
	belongs_to :user
	belongs_to :plus_item, class_name: "Item"
	belongs_to :minus_item, class_name: "Item"
end
