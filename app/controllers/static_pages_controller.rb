class StaticPagesController < ApplicationController
  def index
    if logged_in?
      end_of_month_day = Date.today.end_of_month.day  # 今月末の日にちを取得
      days = [*(1..end_of_month_day)] # 1日から今月末までの数字の配列作成
      days.map! {|item| item.to_s + "日"}  # 配列１つずつ"日"を代入
      @month_balances = current_user.wallets.first.this_month_balances  # 今月の収支を取得
      all_balances = Array.new(end_of_month_day, 0)  # 日にち分の配列を作成
      @month_balances.each do |balance|
        all_balances[balance.payment_date.day - 1] = all_balances[balance.payment_date.day - 1] + balance.price
      end
      all_balances.length.times do |a|
        all_balances[a] = all_balances[a - 1]+all_balances[a] unless a == 0
        # if a==0
        # else
        #   allmo[a] = allmo[a-1]+all[a]
        # end
      end

      @chart = LazyHighCharts::HighChart.new('graph') do |f|
        f.rangeSelector(:selected => 1)
        # f.title(:text => "")
        f.tooltip(:valueSuffix => '円')
        f.xAxis(:categories => days)
        f.series(:name => "全財産", :yAxis => 0, :data => all_balances)
        # f.series(:yAxis => 0, :data => all_balances)

        f.legend(:align => 'right', :verticalAlign => 'top',:layout => 'vertical',)
        f.chart({:defaultSeriesType=>"area",:height => 290})
      end
      @enchart1 = LazyHighCharts::HighChart.new('pie') do |f|
        f.title(:text => "hoihoi")
        f.chart({height:200,defaultSeriesType: 'pie'})
        f.series({
                   type: 'pie',
                   name: 'hoge',
                   data: [
                     ['hoge', 50.0],
                     ['huga', 25.0],
                     ['piyo', 25.0],
                     ['hage', 0]
                   ]
                 })
      end
      @enchart2 = LazyHighCharts::HighChart.new('pie') do |f|
        f.chart({height:200,defaultSeriesType: 'pie'})
        f.series({
                   type: 'pie',
                   name: 'hoge',
                   data: [
                     ['hoge', 50.0],
                     ['huga', 25.0],
                     ['piyo', 25.0],
                     ['hage', 0]
                   ]
                 })
      end
      @enchart3 = LazyHighCharts::HighChart.new('pie') do |f|
        f.chart({defaultSeriesType: 'pie'})
        f.series({
                   type: 'pie',
                   name: 'hoge',
                   data: [
                     ['hoge', 50.0],
                     ['huga', 25.0],
                     ['piyo', 25.0],
                     ['hage', 0]
                   ]
                 })
      end
    end
  end

  def help
  end

  def contact
  end

  def log_in
  end

  def sign_up
  end
end
