class NullPiece < Piece
    include Singleton

    attr_reader :symbol, :color

    def symbol
        ""
    end

    def color
        :clear 
    end

end