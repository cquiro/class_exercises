#cats_in_hats.rb
=begin
cat_line = []
100.times { cat_line << 0 } #initializes an array of 100 zeros
with_no_hat = [] #array of cats with no hats
i = 1

until i == 101 do #loop to go through the array 100 times
 n = 1 #counter to determine the position of each cat while going through the array
  cat_line.each { |cat|
    cat_line[n-1] += 1 if n % i == 0 #if n % i equals 0 it means we need to mess
                                     #with the cat's hat. If we are visiting cats
                                     #two by two, then we mess with the cat's hat 
                                     #every time n % 2 == 0 (2, 4, 6, 8, 10...).
                                     #the same with 3, 4, 5, etc.
    n += 1 #update the cat position we are at the time
  }
  i += 1 #update to keep track of the number of times we have gone through the array.
end

ind = 0 #counter to move through the array positions.
until ind == 100 do
	with_no_hat << (ind + 1) if cat_line[ind].odd? #if we visit a cat an odd number of
	                                               #times it will have no hat. If we 
	                                               #visited a given cat an even number
	                                               #of times it will have a hat.
    ind += 1
end

p with_no_hat
=end

cats = Array.new(100, true)
cats_no_hats = []

100.times do |pass|
  #p(pass + 1)
  cats.map!.with_index do |has_hat, index|
    if ((index + 1) % (pass + 1)).zero?
        !has_hat
    else
        has_hat
    end
  end
 # p cats
end

cats.each.with_index { |hat, index| 
     cats_no_hats << (index + 1) if !hat
}

p cats_no_hats

