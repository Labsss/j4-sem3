
require_relative 'game'

class Application
  attr_accessor :player_1, :player_2, :game 

  @@game_counter=0

  def initialize

    @game = Game.new


    
  

  end
end