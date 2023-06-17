require "./lib/player.rb"
require "./lib/tic_tac_toe.rb"
require "./lib/board.rb"


player_x = Player.new("player_x","X")
player_o = Player.new("player_o","O")

game1= TicTacToe.new(player_x,player_o)
board=Board.new()
p board.has_winner?

board.set_value(1,"X")
board.set_value(4,"X")
board.set_value(7,"X")

p board.has_winner?

