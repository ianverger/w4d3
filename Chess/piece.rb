class Piece
    attr_reader :board, :color
    attr_accessor :pos

    def initialize(color, board, pos)
       @color = color
       @board = board
       @pos = pos

       board.add_piece(self, pos)
    end

    def pos=(val)
        row, col = pos 
        @board[row][col] = val
    end

    def valid_moves
        @valid_moves = []
    end

    def moves
        #return moves
    end

    def empty?
        return self == NullPiece
    end
end