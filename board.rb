
require_relative "piece.rb"

class Board 

    def initialize

        @rows = Array.new(8) { Array.new(8) }

    end 


    def [](pos)

        row, col = pos 

        @rows[row][col] 

    end 


    def []=(pos, piece)

        row, col = pos 

        @rows[row][col] = piece

    end 


    def move_piece(start_pos, end_pos)         #is there something there, if empty, you can move there

        raise "There is no piece at start positon" if self[start_pos].empty?  #possibly nil - difference?

        raise "There is a piece at end position" if !self[end_pos].empty? 

        self[end_pos] = self[start_pos]             #sets new position to old position -- is this swithced?

        self[start_pos] = nil 

    end



end 