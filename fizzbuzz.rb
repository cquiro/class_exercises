#fizzbuzz.rb


fizzbuzz = (1..100).to_a

fizzbuzz.map do |is_num|
    if (is_num % 3 == 0) && (is_num % 5 == 0)
        puts "FizzBuzz"
    elsif is_num % 3 == 0
    	puts "Fizz"
    elsif is_num % 5 == 0
    	puts "Buzz"
    else 
    	puts is_num
    end
end





