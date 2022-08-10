require_relative "piece"

class Pawn < Piece

    def initialize(color, board, pos)
        super
        @at_start_row = true
    end

    def symbol
        "♟️"
    end

    def moves
        full_pos_moves = forward_steps + side_attacks              
    end

    private
    

    def forward_dir
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps
        pos_moves = []

        x, y = self.pos 

        if @at_start_row
            2.times do
                new_x = x + forward_dir
                new_pos = [new_x, y]
                pos_moves << new_pos
            end
            @at_start_row = false
        else
            new_x = x + forward_dir
            new_pos = [new_x, y]
            pos_moves << new_pos
        end

        pos_moves
    end
    
    def side_attacks
        pos_moves = []

        x, y = self.pos 

        if self.color == :black
            new_x = x - 1
            new_y = y - 1
            pos1 = [new_x, new_y]
            if @board[pos1].color == :white
                pos_moves << pos
            end
            new_y = y + 1
            pos2 = [new_x, new_y]
            if @board[pos2].color == :white
                pos_moves << pos
            end
        end

        if self.color == :white
            new_x = x + 1
            new_y = y - 1
            pos1 = [new_x, new_y]
            if @board[pos1].color == :black
                pos_moves << pos
            end
            new_y = y + 1
            pos2 = [new_x, new_y]
            if @board[pos2].color == :black
                pos_moves << pos
            end
        end
    end
end


