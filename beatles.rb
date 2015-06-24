#beatles.rb

# beatles = [
#   {
#     :name => nil,
#     :nickname => "The Smart One"
#   },
#   {
#     :name => nil,
#     :nickname => "The Shy One"  
#   },
#   {
#     :name => nil,
#     :nickname => "The Cute One"
#     },
#   {
#     :name => nil,
#     :nickname => "The Quiet One"
#   }
# ]

# beatles.each do |member|
#   case member[:nickname]
#     when "The Smart One" then puts "Hi, I'm #{member[:name] = "John"}.  I'm #{member[:nickname]}!"
#     when "The Shy One" then puts "Hi, I'm #{member[:name] = "George"}.  I'm #{member[:nickname]}!"
#     when "The Cute One" then puts "Hi, I'm #{member[:name] = "Paul"}.  I'm #{member[:nickname]}!"
#     when "The Quiet One" then puts "Hi, I'm #{member[:name] = "Ringo"}.  I'm #{member[:nickname]}!"
#   end
# end

class Band

  attr_accessor :members
  attr_reader :band_name

  def initialize(band_name)
    @band_name = band_name
    @members = []
  end

  def add_members(*name)
    @members << name
  end

  def inspect
    @members
  end

end


class Beatle

  attr_reader :name, :nickname

  def initialize(name, nickname)
    @name = name
    @nickname = nickname
  end

  def say_hello
    "Hi, I'm #{@name}.  I'm #{@nickname}!"
  end

  def to_s
    @name
  end

  def inspect
    @name
  end

end


# john = Beatle.new("John", "The Smart One")
# paul = Beatle.new("Paul", "The Cute One")
# ringo = Beatle.new("Ringo", "The Quiet One")
# george = Beatle.new("George", "The Shy One")

the_beatles = Band.new("The Beatles")
the_beatles.add_members(Beatle.new("John", "The Smart One"), Beatle.new("Paul", "The Cute One"), Beatle.new("Ringo", "The Quiet One"), Beatle.new("George", "The Shy One"))
# the_beatles.add_member(Beatle.new("Paul", "The Cute One"))
# the_beatles.add_member(Beatle.new("Ringo", "The Quiet One"))
# the_beatles.add_member(Beatle.new("George", "The Shy One"))

i = 0

4.times { p the_beatles.members[0][i].say_hello; i +=1 }


#puts john.say_hello


#p beatles
#p beatles
=begin
array = [1,2,3,4,5]

array.each { |num| 
   p num
case num
when 1 then puts "a"
when 2 then puts "b"
when 3 then puts "c"
when 4 then puts "d"
when 5 then puts "e"
end
}
=end

