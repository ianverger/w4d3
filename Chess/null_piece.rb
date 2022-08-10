class NullPiece < Piece
    include Singleton

    attr_reader :symbol, :color
    @@symbol = :NP
    @@color = none 

end