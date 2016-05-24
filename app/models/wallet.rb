class Wallet < ActiveRecord::Base
  has_many :balances
  belongs_to :user, foreign_key: :user_key, primary_key: :key

  def this_month_balances
    self.balances.where("payment_date >= ?", Date.today.beginning_of_month)
      .where("payment_date <= ?", Date.today.end_of_month)
      .order(:payment_date)
  end
end
