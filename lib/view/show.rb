class Show
  attr_accessor :board

  def initialize
  end

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    #p board
    puts "-" * 13
    puts "| " + board.ary_boardcase[0].token + " | " + board.ary_boardcase[1].token + " | " + board.ary_boardcase[2].token + " |"
    puts "-" * 13
    puts "| " + board.ary_boardcase[3].token + " | " + board.ary_boardcase[4].token + " | " + board.ary_boardcase[5].token + " |"
    puts "-" * 13
    puts "| " + board.ary_boardcase[6].token + " | " + board.ary_boardcase[7].token + " | " + board.ary_boardcase[8].token + " |"
    puts "-" * 13
  end
  
end