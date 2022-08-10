module Stepable
    def moves(start_pos)
        pos_moves = []

        move_diffs.each do |inc|
            x_inc, y_inc = inc # 1 , 1
            x, y = start_pos # 0, 0 
            new_x = x + x_inc #1
            new_y = y + y_inc # 1
            new_pos = [new_x, new_y] #1, 1
            pos_moves << new_pos             
        end

        pos_moves
    end

    def move_diffs

      #raise NotImplementedError
    end
end