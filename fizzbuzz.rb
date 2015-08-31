#creates an array containing the numbers from 0 to 100.
fizzbuzz = (1..100).to_a

#Algorithm to go through the array and printing 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, etc
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
