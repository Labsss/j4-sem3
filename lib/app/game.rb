require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :current_player, :status, :ary_player, :board

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @ary_player = [@player_1,@player_2]
    @player_1.show_state
    @player_2.show_state
    @status = 'on going'

    @board = Board.new
    Show.new.show_board(@board)
  end

  def turn

    i=0
    while @status == 'on going' && i<9
      @current_player = @ary_player[i%2] # joueur alternativement index 0 ou 1
      @board.play_turn(@board, @current_player)
      
      # affiche tableau en-cours
      Show.new.show_board(@board)

      # check winner
      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i+=1 # compteur de tour
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.

    puts "Voulez-vous faire une nouvelle partie (O/N) ?"
    choice = gets.chomp.upcase
    until choice == 'O' || choice == 'N' 
      case choice
      when 'O'
        @board = Board.new
      when 'N'
        puts "Ok, bye"
        exit
      else 
        puts "Choix erroné. Voulez-vous faire une nouvelle partie (O/N) ?"
        choice = gets.chomp.upcase
      end
    end

  end

  def game_end
    if @status == 'on going'
      puts "Match nul"
    elsif @status == 'winner'
      puts "Bravo #{@current_player.player_name}, t'as gagné"
    end
  end    

end