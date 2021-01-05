#Will hold the player name and lives
class Player
  attr_accessor :name, :lives, :reduceLives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduceLives
  @lives -= 1 
  if @lives == 0 
    puts "Game-Over!"
    end
  end

end