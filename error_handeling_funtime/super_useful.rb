# PHASE 2
def convert_to_int(str)
  begin 
    Integer(str)
  rescue ArgumentError
    puts "Please enter a string of digits"
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  # begin
    if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    else
      raise StandardError
    end
  # rescue StandardError
    # retry
  # end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue StandardError 
    if maybe_fruit == "coffee"
      retry
    end
  end 
end  

# PHASE 4

class InvalidYears < StandardError; end
class InvalidName < StandardError; end
class InvalidPastime < StandardError; end

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise InvalidName if name.empty?
    @yrs_known = yrs_known
    raise InvalidYears if @yrs_known < 5
    @fav_pastime = fav_pastime
    raise InvalidPastime if fav_pastime.empty?
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


