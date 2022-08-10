class Knight < Piece
    include Stepable
    @@symbol = :Kn

    def move_diffs
         [
            [1, 2], 
            [2, 1], 
            [1, -2], 
            [-1, -2],
            [-1, 2], 
            [2, -1], 
            [-2,-1], 
            [-2,1] 
        ]
    end

end