# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError if maybe_fruit != "coffee"
    raise ArgumentError if maybe_fruit == "coffee"
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue ArgumentError
    puts "I like coffee, but please try to feed me a fruit again"
    retry
  rescue StandardError
    puts "oh no, it' not a fruit"
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    unless yrs_known >= 5
      raise ArgumentError.new "Years known can't be less than five!"
    end 
    unless name.length > 0 && fav_pastime.length > 0
      raise ArgumentError.new "Can't have blank name or favorite past time." 
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


