#Array of stock prices. Each element represents a price for that day (index represents day number).
stock_prices = [17, 3, 6, 9, 15, 8, 6, 30, 10]

#Initializes the array that keeps track of the days when profit is higher
#with the first two days in the aray.
days_prof = [0, 1]

#Initilizes the buy and sell days with the days_prof array.
buy_day = days_prof[0]
sell_day = days_prof[1]

#Initializes profit for the first two days. (buy_day = 0, sell_day = 1)
profit = stock_prices[sell_day] - stock_prices[buy_day]

#buy_day can never be the last day
until buy_day == stock_prices.length - 1
  #Sets new sell day to one day after new buy_day to start comparing from there.
  sell_day = buy_day + 1
  #sell_day should not be greater than the array length.
  until sell_day == stock_prices.length
    #calculates new profit between the current buy_day and all the possible sell days.
    new_profit = stock_prices[sell_day] - stock_prices[buy_day]
    if profit < new_profit
      profit = new_profit #updates profit if new_profit is higher than profit.
      days_prof = [buy_day, sell_day] #updates days_prof array with the new buy and sell days.
      sell_day += 1
    else
    	sell_day += 1
    end
  end
  buy_day += 1
end

p "You should buy stock on day #{days_prof[0]} and sell it on day #{days_prof[1]}."
