class Player
    attr_accessor:name,:value
    def initialize(name, value)
        self.name=name
        self.value=value
    end
    def make_move(board,position)
        board.set_value(position,value)
    end
end
