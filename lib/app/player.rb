class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :player_name, :player_token

  
  def initialize
    #TO DO : doit régler son nom et sa valeur
    @player_name = gets_name
    @player_token = gets_token


  end

  def show_state
    puts "Le joueur #{@player_name} joue avec le jeton '#{@player_token}'"
  end

  private
  def gets_name
    print "Quel ton nom ? "
    name = gets.chomp  
  end

  def gets_token
    print "Quel jeton souhaites-tu ? (X ou O) "
    token = gets.chomp.upcase
    while token != "X" && token != "O"
      puts "---> erreur de saisie: soit X ou O."
      print "Quel jeton souhaites-tu ? (X ou O) "
      token = gets.chomp.upcase
    end
    return token
  end

end