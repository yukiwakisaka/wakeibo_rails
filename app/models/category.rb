class Category < ActiveRecord::Base
  has_many :balances
end
