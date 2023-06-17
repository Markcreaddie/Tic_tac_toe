class Player
  attr_accessor :name, :value

  def initialize(name, value)
    self.name = name
    self.value = value
  end

  def make_move(board)
    puts "Select a position #{name}:"
    valid_value = false
    until valid_value == true
      position = gets.chomp

      unless position == position.to_i.to_s
        puts 'Enter a number between 0-8'
        next
      end

      position = position.to_i
      unless position >= 0 && position < 9
        puts 'Enter a number between 0-8'
        next
      end

      unless board.board[position] == '-'
        puts "Position #{position} is already taken. Pick another one"
        next
      end

      valid_value = true
      board.set_value(position, value)
    end
  end
end
