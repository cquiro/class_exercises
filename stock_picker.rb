#stock_picker.rb

#stock_prices = [17,3,6,9,15,8,6,30,10]

    

    

i = 0
profit = stock_prices[1] - stock_prices[0]
days_prof = [0, 1]

until buy == stock_prices.length - 1
    sell = buy + 2
    until sell ==  stock_prices.length
		if profit < stock_prices[sell] - stock_prices[buy]
            profit = stock_prices[sell] - stock_prices[buy] 
            days_prof = [buy, sell]
            sell += 1
        else
        	sell += 1
        end
    end
    buy += 1
end

p days_prof


#This is not a solution for this problem. This is 
#the Ruby way to go throgh the square.
=begin
stocks = [17,3,6,9,15,8,6,30,10] 
stocks.size.times do |buy|
    stocks.size.times do |sell|
        p "#{buy}, #{sell}"
    end
end
=end





