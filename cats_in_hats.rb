#Initializes an array of size 100 with all its elements set to true.
#Each element represents a cat. If it is set to true it means that cat
#has a hat.
cats = Array.new(100, true)

#creates an empty array of cats with no hats.
cats_no_hats = []

#uses variable pass to model the number of times it visits the cats array.
100.times do |pass|
  #The first pass it flips each element.
  #The second pass it flips every second element.
  #The third pass it flips every third element.
  #So on and so forth.
  cats.map!.with_index do |has_hat, index|
    #Checks to flip elements (take off or put on hats) every "pass + 1" elements.
    if ((index + 1) % (pass + 1)).zero?
      !has_hat
    else
      has_hat
    end
  end
end

#Goes through the array and adds the number (index + 1) of
#every cat that has no hat to the cats_no_hats array.
cats.each.with_index { |hat, index|
  cats_no_hats << (index + 1) if !hat
}

#shows all the cats left with no hats.
p cats_no_hats
