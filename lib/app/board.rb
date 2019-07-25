require_relative 'boardcase'
require_relative 'player'
require_relative 'game'


class Board
  attr_accessor :boardcases, :count_turn


  def initialize
    @boardcases = []
    i = 1
    while i <= 9
      @boardcases << BoardCase.new(i)
      i +=1
    end
  end

  def play_turn(player)
    puts "Quelle case ?"
    print ">"
    user_input = gets.chomp.to_i
    case user_input
      when user_input = 1
        @boardcases[0].value = player.symbol
      when user_input = 2
        @boardcases[1].value = player.symbol
      when user_input = 3
        @boardcases[2].value = player.symbol
      when user_input = 4
        @boardcases[3].value = player.symbol
      when user_input = 5
        @boardcases[4].value = player.symbol
      when user_input = 6
        @boardcases[5].value = player.symbol
      when user_input = 7
        @boardcases[6].value = player.symbol
      when user_input = 8
        @boardcases[7].value = player.symbol
      when user_input = 9
        @boardcases[8].value = player.symbol
      end
    end

  def victory?(player)
    if @boardcases[0].value == player.symbol && @boardcases[1].value == player.symbol && @boardcases[2].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[3].value == player.symbol && @boardcases[4].value == player.symbol && @boardcases[5].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[6].value == player.symbol && @boardcases[7].value == player.symbol && @boardcases[8].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[0].value == player.symbol && @boardcases[3].value == player.symbol && @boardcases[6].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[1].value == player.symbol && @boardcases[4].value == player.symbol && @boardcases[7].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[2].value == player.symbol && @boardcases[5].value == player.symbol && @boardcases[8].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[0].value == player.symbol && @boardcases[4].value == player.symbol && @boardcases[8].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    elsif @boardcases[2].value == player.symbol && @boardcases[4].value == player.symbol && @boardcases[6].value == player.symbol
      "Le joueur #{@current_player} a gagné"
      return true
    else
      return false
    end
  end

end
