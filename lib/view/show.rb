  
class Show

    def show_board(board)
      puts "-------------"
      puts " #{@game.board.boardcases[6].value} | #{@game.board.boardcases[7].value} | #{@game.board.boardcases[8].value} "
      puts "-------------"
      puts " #{@game.board.boardcases[3].value} | #{@game.board.boardcases[4].value} | #{@game.board.boardcases[5].value} "
      puts "-------------"
      puts " #{@game.board.boardcases[0].value} | #{@game.board.boardcases[1].value} | #{@game.board.boardcases[2].value} "
      puts "-------------"
    end
  
  end
  