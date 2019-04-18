
require_relative 'board_case'

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

	def play_turn
		#TO DO : une méthode qui :
		#1) demande au bon joueur ce qu'il souhaite faire
		#2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
	end

	def victory?
		#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
	end
end