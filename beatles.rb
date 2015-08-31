#Defines a Band class.
class Band
  #Band members can be added or deleted (no method added for delete, though). Name of band can only be read.
  attr_accessor :members
  attr_reader :band_name

  #creates a new band taking the band_name as an argument.
  def initialize(band_name)
    @band_name = band_name
    @members = []
  end

  #Adds members to the band taking an array as a list of arguments.
  def add_members(*name)
    @members << name
  end

  #Shows members array when inspecting Band class (p Band)
  def inspect
    @members
  end
end


class Beatle
  #allows name and nickname to be read.
  attr_reader :name, :nickname

  #creates a new beatle taking its name and nickname as arguments.
  def initialize(name, nickname)
    @name = name
    @nickname = nickname
  end

  #Beatle greeting.
  def say_hello
    "Hi, I'm #{@name}. I'm #{@nickname}!"
  end

  #Shows the beatle name when calling to_s (puts Beatle)
  def to_s
    @name
  end

  #Shows the beatle name when calling inspect (p Beatle)
  def inspect
    @name
  end
end

#creates band The Beatles
the_beatles = Band.new("The Beatles")

#creates instances of the Beatle class.
john = Beatle.new("John", "The Smart One")
paul = Beatle.new("Paul", "The Cute One")
ringo = Beatle.new("Ringo", "The Quiet One")
george = Beatle.new("George", "The Shy One")

#Adds members to Band instance the_beatles.
the_beatles.add_members(john, paul, ringo, george)

i = 0
#calls the say_hello method for each of the members of "The Beatles"
4.times { p the_beatles.members[0][i].say_hello; i +=1 }
