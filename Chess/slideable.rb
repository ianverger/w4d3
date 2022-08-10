module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [
        [-1,0], [0, 1], [1, 0], [ 0, -1]
].freeze

    DIAGONAL_DIRS = [
        [-1, -1], [-1, 1], [1, 1], [1, -1]
].freeze


    def horizonal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end

    def moves 
        pos_moves = []

        move_dirs.each do |direction|
            dx, dy = direction
            pos_moves += grow_unblocked_moves_in_dir(dx, dy)
        end

    end

    private
    def move_dirs 

        #raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        directions_arr = []
       
        new_x, new_y = self.pos

        while @board.valid_pos?([new_x, new_y])
            new_x += dx
            new_y += dy
            new_x, new_y = new_pos
            if new_pos.empty?
                directions_arr << new_pos
            elsif !new_pos.empty? && @board[new_pos].color != self.color
                directions_arr << new_pos
                return 
            else
                return
            end
        end
    end
end