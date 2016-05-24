@user = User.create(email: 'aiueo@aiueo.oi', key: 'master', name: 'admin', password: 'administer')
@wallet = Wallet.create(name: '財布', price: '0', user_key: @user.key)
Category.create(name: '生活費')
Category.create(name: 'ゲーム')
Category.create(name: '交遊費')
1000.times do |i|
  now = [*(Date.today.beginning_of_month..Date.today.end_of_month)].sample
  Balance.create(wallet_id: @wallet.id,category_id: rand(1..3), debit_date: now,payment_date: now, price: rand(-10000..10000))
end
