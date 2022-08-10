require "singleton"

class NullPiece < Piece
    include Singleton

    def initialize
    end

    attr_reader :symbol, :color

    def symbol
        ""
    end

    def color
        :none 
    end

end