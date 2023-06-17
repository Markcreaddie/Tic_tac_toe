require './lib/player'
require './lib/tic_tac_toe'
require './lib/board'

player_x = Player.new('player_x', 'X')
player_o = Player.new('player_o', 'O')

3.times do |num|
  if num > 0
    puts 'Do you want to play another round? [Y/N]'
    response = gets.chomp.upcase
    unless %w[Y N].include?(response)
      puts "Write 'Y' or'N'"
      redo
    end
  end
  break if response == 'N'

  key = Board.new
  game = TicTacToe.new(player_x, player_o, key)
  game.play
end

puts('GAME OVER!!')
