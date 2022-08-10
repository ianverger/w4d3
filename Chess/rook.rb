class Rook < Piece
    include Slideable
    @@symbol = :R

    def move_dirs
        horizonal_and_vertical_dirs
    end

end