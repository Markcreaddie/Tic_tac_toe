class TicTacToe
  attr_accessor :round, :score, :p1, :p2, :board

  def initialize(p1, p2, board)
    self.p1 = p1
    self.p2 = p2
    self.board = board
  end

  def play
    active_player = p1
    dormant_player = p2
    until board.is_full? || board.has_winner?
      active_player, dormant_player = dormant_player, active_player
      active_player.make_move(board)
    end
    if board.has_winner?
      puts "#{board.winner} has won!!"
    else
      puts "Good job to your both. It's a draw."
    end

    board.print_board
  end
end
