require_relative "piece.rb"
require_relative "board.rb"

module Stepable

    def moves
        potential_moves = []
        row, col = piece.pos

        move_diffs.each do |dx, dy|
            new_pos = [dx + row, dy + col]

            if board.valid_pos?(new_pos)
                if board[new_pos].empty?
                    potential_moves << new_pos 
                elsif board[new_pos].piece.color != self.color
                    potential_moves << new_pos
                end
            end
        end

        potential_moves
    end

    def valid_pos?(pos)
        pos = row, col
        if row < 0 || row > 7 
            return false
        elsif col < 0 || col > 7
            return false
        end
        true
    end


    private 

    def move_diffs #will be overwritten
        raise "not implemented" 
    end

end