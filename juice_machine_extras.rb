class JuiceMachine
  attr_accessor :orange_count

  @@juices_served = 0

  def self.juices_served
    puts "#{@@juices_served} juices served!"
  end

  def initialize(orange_count)
    @orange_count = orange_count

    puts "ready to juice"
  end
  
  def juice(quantity)
    @orange_count -= quantity
    @@juices_served += quantity
    
    slice
    squeeze
    pour 
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
    puts "#{quantity} juice(s)!"
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
  end

  private

  def slice
    puts "slicing orange"
  end

  def squeeze
    puts "squeezing orange"
  end

  def pour
    puts "pouring juice"
  end
end