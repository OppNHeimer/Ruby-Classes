class JuiceMachine
  attr_accessor :orange_count

  def initialize(orange_count)
    @orange_count = orange_count

    puts "ready to juice"
  end
  
  def juice(quantity)
    @orange_count -= quantity

    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
    puts "#{quantity} juice(s)!"
    # puts "#{@orange_count} remaining"
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
  end


  # def orange_count
  #   @orange_count
  # end
  
  # def orange_count=(new_orange_count)
  #   @orange_count = new_orange_count
  # end
end