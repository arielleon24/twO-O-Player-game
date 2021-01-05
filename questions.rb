class Questions
  attr_accessor :ask_question
  def initialize
  end
  
  def ask_question 
    @number1 = rand (1..10)
    @number2 = rand (1..10)
    puts "What does #{@number1} + #{@number2} equal?"
  end 
  
  def validate
  @result = @number1 + @number2
  # if @user_input == @result
  #   puts "That's correct!"
  # else
  #   puts "Sorry, wrong answer"
  #   Player.reduceLives
  end

end


# Question = Questions.new
# puts Question.ask_question