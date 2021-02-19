require 'date'

class Counter
  attr_reader :count

  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

 def decrement
   @count -= 1
 end

 def reset
   @count = 0
 end

 def time
   Time.now.round
 end

  def self.instance
    @counter ||= Counter.new
  end
end



# Model. Gets and manipulates data. Interacts with database
# Sometimes can update view, e.g. with instance variables
