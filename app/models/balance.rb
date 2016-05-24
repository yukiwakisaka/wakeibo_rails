class Balance < ActiveRecord::Base
  belongs_to :Wallet
  belongs_to :category
end
