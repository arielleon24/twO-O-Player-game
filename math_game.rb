class Game
  attr_accessor :Player1, :Player2, :Current_player
  def initialize
    @Player1 = Player.new("P1 - Ariel")
    @Player2 = Player.new("P2 - Yoda")
    @Current_player = @Player1
    @Questions = Questions.new
    @round = 1
  end
  
  def play 
    
    puts @Player1.inspect
    puts @Player2.inspect
    while @Player1.lives > 0 and @Player2.lives > 0 

      puts "-----------------------------"
      puts "ROUND:#{@round}"
      if @round % 2 == 0 
       @Current_player = @Player2
      else
        @Current_player = @Player1
      end
      puts @Current_player.name
      puts "-----------------------------"

      puts @Questions.ask_question
      @user_input = gets.chomp.to_i
      puts "USER INPUT: #{@user_input}"
      puts "Validate: #{@Questions.validate}"
      if @user_input != @Questions.validate
        @Current_player.reduceLives
        puts @Player1.inspect
        puts @Player2.inspect
      end
      @round += 1
    end
    
  end

end  

# puts "Player #{Player2.name} has #{Player2.lives}/3 lives"
# puts Questions.ask_question
# puts Questions.ask_question

