class Show
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    p board
  end
  
end