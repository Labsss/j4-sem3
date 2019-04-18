
require_relative 'board_case'
require 'pry'
class Board
	#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
	#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
	attr_accessor :ary_boardcase

	def initialize
		#TO DO :
		#Quand la classe s'initialize, elle doit créer 9 instances BoardCases
		#Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

		@case1 = BoardCase.new("A1",'.')
		@case2 = BoardCase.new("A2",'.')
		@case3 = BoardCase.new("A3",'.')
		@case4 = BoardCase.new("B1",'.')
		@case5 = BoardCase.new("B2",'.')
		@case6 = BoardCase.new("B3",'.')
		@case7 = BoardCase.new("C1",'.')
		@case8 = BoardCase.new("C2",'.')
		@case9 = BoardCase.new("C3",'.')
		@ary_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
	end

	def play_turn(board,current_player)
		#TO DO : une méthode qui :
		#1) demande au bon joueur ce qu'il souhaite faire
		#2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

		print "#{current_player.player_name}, quelle case souhaites-tu jouer ? "
    case_to_play = gets.chomp

    case case_to_play
    when "A1"
        if board.ary_boardcase[0].token = '.'
            board.ary_boardcase[0].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
        #faire un truc
    when "A2"
        if board.ary_boardcase[1].token = '.'
            board.ary_boardcase[1].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
    when "A3"
        if board.ary_boardcase[2].token = '.'
            board.ary_boardcase[2].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
        #faire un truc
    when "B1"
        if board.ary_boardcase[3].token = '.'
            board.ary_boardcase[3].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
        #faire un truc
    when "B2"
        if board.ary_boardcase[4].token = '.'
            board.ary_boardcase[4].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
        #faire un truc
    when "B3"
        if board.ary_boardcase[5].token = '.'
            board.ary_boardcase[5].token  = current_player.player_token
        else
            puts "Case déjà occupée"
        end
        #faire un truc
    when "C1"
        if board.ary_boardcase[6].token = '.'
            board.ary_boardcase[6].token  = current_player.player_token
        else
            puts "Case déjà occupé"
        end
        #faire un truc
    when "C2"
        if board.ary_boardcase[7].token = '.'
            board.ary_boardcase[7].token  = current_player.player_token
        else
            puts "Case déjà occupé"
        end
        #faire un truc
    when "C3"
        if board.ary_boardcase[8].token = '.'
            board.ary_boardcase[8].token  = current_player.player_token
        else
            puts "Case déjà occupé"
        end
        #faire un truc
    else 
        puts "erreur de case"
    end
binding.pry
	end

	def victory?
		#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
	end
end