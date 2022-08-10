require_relative "piece"
require_relative "slideable"

class Queen < Piece
    include Slideable
    
    def symbol
        '♛'
    end

    protected

    def move_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
        DIAGONAL_DIRS
    end

end
