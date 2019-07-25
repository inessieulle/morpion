require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board'
require 'app/boardcase'
require 'app/game'
require 'app/player'


game = Game.new
game.turn
while game.board.victory?(game.current_player) == false
  game.turn
  game.game_end
end
