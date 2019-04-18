class Application
    attr_accessor :player_1, :player_2, :game 

    @@game_counter=0

    def initialize
        @player_1 = Player.new
        @player_2 = Player.new
        @ary_player = [player_1,player_2]
        #@game = Game.new(ary_player)
        @player_1.show_state
        @player_2.show_state

    end
end