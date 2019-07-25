require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game
  attr_accessor :current_player, :status, :board, :players

  def initialize
    puts"Quel est le pseudo du joueur 1 ?"
    print ">"
    nickname1 = gets.chomp
    @player1 = Player.new(nickname1, "x")
    puts"Quel est le pseudo du joueur 2 ?"
    print ">"
    nickname2 = gets.chomp
    @player2 = Player.new(nickname2, "o")
    @players = [@player1, @player2]
    @board = Board.new
    @current_player = @player1
  end

  def turn
    i = 1
    puts "C'est au tour de #{@current_player.name}"
    @board.play_turn(@current_player)
    if @board.victory?(@current_player) == false
      @current_player = (@players.reverse!)[0]
      turn
      i +=1
    else
      puts "#{@current_player.name} a gagné"
    end
    return i
  end

  def new_round
  end

  def game_end
    i = turn
    if @board.victory?(@current_player.name) == true
      puts "#{@current_player} a gagné"
    elsif i == 9
      puts "Egalité"
    else "La partie continue"
    end
  end
end
