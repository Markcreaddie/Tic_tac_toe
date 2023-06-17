class Board
    @@empty_board=Array.new(9,"-")
    attr_accessor :board

    def initialize()
        self.board=@@empty_board
    end

    def print_board
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def set_value(cell, value)
        self.board[cell]= value
    end

    def is_empty?(cell)
        self.board[cell]=="-"
    end
    def has_winner?()
        combinations=[
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [2,4,6]
        ]
        combinations.each do |combination|
            values=[]
            combination.each{ |cell| values.push(self.board[cell])}
            if values.uniq.count==1 && values.uniq[0] !="-"
                p values
                return true
            end
        end
        false
    end

            
end