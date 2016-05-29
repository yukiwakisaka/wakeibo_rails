class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :plus_items, class_name: "exchanges"
	has_many :minus_items, class_name: "exchanges"
end
