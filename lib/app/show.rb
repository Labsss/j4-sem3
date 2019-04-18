class Show
  attr_accessor :board

  def initialize
  end

  def show_board(board)
    puts " " * 3 + "1" + " " * 3 + "2" + " " * 3 + "3" 
    puts "-" * 15
    puts "A | " + board.ary_boardcase[0].token + " | " + board.ary_boardcase[1].token + " | " + board.ary_boardcase[2].token + " |"
    puts "-" * 14
    puts "B | " + board.ary_boardcase[3].token + " | " + board.ary_boardcase[4].token + " | " + board.ary_boardcase[5].token + " |"
    puts "-" * 14
    puts "C | " + board.ary_boardcase[6].token + " | " + board.ary_boardcase[7].token + " | " + board.ary_boardcase[8].token + " |"
    puts "-" * 14
  end
  
end
