# require_relative "./board.rb"
require_relative "../piece.rb" 

class Pawn < Piece
    def symbol
        ':♙'.colorize(color)
    end

    def moves
        forward_steps + side_attacks
    end

    private

    def at_start_row?
        if self.color == :white && pos[0] == 1
            return true
        elsif self.color == :black && pos[0] == 6
            return true
        else
            return false
        end
    end

    def forward_dir #returns 1 or -1
        if self.color == :white
            return 1
        else
            return -1
        end
    end

    def forward_steps
        potential_moves = []
        row, col = self.pos
        new_pos1 = [row + forward_dir, col]
        new_pos2 = [row + forward_dir*2, col]

        if self.at_start_row? && new_pos1.empty? #revisit
            potential_moves << new_pos1
        elsif self.at_start_row? && new_pos1.empty? && new_pos2.empty?
            potential_moves << new_pos2
            potential_moves << new_pos1
        elsif !self.at_start_row? && new_pos1.empty?
            potential_moves << new_pos1
        end
        potential_moves
    end

    def side_attacks
        potential_moves = []
        row, col = self.pos
        new_pos1 = [row + forward_dir, col + 1]
        new_pos2 = [row + forward_dir, col -1]

        if new_pos1.piece.color != self.color
            potential_moves << new_pos1
        elsif new_pos2.piece.color != self.color
            potential_moves << new_pos2
        end
        potential_moves
    end
end