class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :player_name, :player_token

  
  def initialize(name, token)
    #TO DO : doit régler son nom et sa valeur
    @player_name = name
    @player_token = token


  end

  def show_state
    puts "Le joueur #{@player_name} joue avec le jeton '#{@player_token}'"
    
  end

end