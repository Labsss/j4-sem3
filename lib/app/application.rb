class Application
    attr_accessor :player_1, :player_2

    @@game_counter=0

    def initialize
        @player_1 = Player.new
        
    end
end