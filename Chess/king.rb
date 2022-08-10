class King < Piece
    include Stepable
    @@symbol = :K

    def move_diffs
        [   [-1, -1],
            [-1, 0],
            [-1, 1],
            [0,-1],
            [0,1],
            [1,-1],
            [1,0],
            [1,1]     ]
    end

end