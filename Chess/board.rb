require_relative "req_files"


class Board

def initialize
    @grid = Array.new(8) { Array.new(8) }
    # @null_piece = NullPiece
    self.init_pieces
end

def init_pieces
    @grid[0][0], @grid[0][7] = Rook.new(:black, @grid, [0,0]), Rook.new(:black, @grid, [0,7]) 
    @grid[0][1], @grid[0][6] = Knight.new(:black, @grid, [0,1]), Knight.new(:black, @grid, [0,6])
    @grid[1].map!.with_index { |space, col_idx| Pawn.new(:black, @grid, [1, col_idx]) }
  
    @grid[2].map! { |space| NullPiece.instance }
    @grid[3].map! { |space| NullPiece.instance }
    @grid[4].map! { |space| NullPiece.instance }
    @grid[5].map! { |space| NullPiece.instance }

    @grid[6].map!.with_index { |space, col_idx| Pawn.new(:white, @grid, [6, col_idx]) }
   

    @grid[7][1], @grid[7][6] = Knight.new(:white, @grid, [7,1]), Knight.new(:white, @grid, [7,6])
    @grid[7][0], @grid[7][7] = Rook.new(:white, @grid, [7,0]), Rook.new(:white, @grid, [7,7])
end

def [](pos)
    row, col = pos
    @grid[row][col]
end

def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
end

def move_piece(start_pos, end_pos)
    if self[start_pos] == nil
        raise "there is no piece at start_pos"
    elsif !valid_pos?(end_pos) 
        raise "the piece cannot move to end_pos"
    end
    
    current_piece = self[start_pos] 
    self[end_pos] = current_piece
    self[start_pos] = nil
end

def valid_pos?(pos)
    pos.all? { |coord| coord.between?(0, 7) }
end

def add_piece(pos, piece)
    @grid[pos] = piece
end

def checkmate?(color)

end

def in_check?(color)

end

def find_king(color)

end

def pieces

end

def dup

end

def move_piece!(color, start_pos, end_pos)

end


end