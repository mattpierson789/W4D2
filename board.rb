require_relative "piece.rb"
require_relative "pieces.rb"

class Board 

    attr_reader :rows

    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.instance)}  #we do nullpiece.instance instead of .new because it is a singleton
        populate
    end 

    def populate
        @rows[0][0] = Rook.new(:black, self, [0,0])
        @rows[0][1] = Knight.new(:black, self, [0, 1])
        @rows[0][2] = Bishop.new(:black, self, [0,2])
        @rows[0][3] = Queen.new(:black, self, [0,3])
        @rows[0][4] = King.new(:black, self, [0,4])
        @rows[0][5] = Bishop.new(:black, self, [0,5])
        @rows[0][6] = Knight.new(:black, self, [0,6])
        @rows[0][7] = Rook.new(:black, self, [0,7])
        
        @rows[7][0] = Rook.new(:white, self, [7,0])
        @rows[7][1] = Knight.new(:white, self, [7,1])
        @rows[7][2] = Bishop.new(:white, self, [7,2])
        @rows[7][3] = Queen.new(:white, self, [7,3])
        @rows[7][4] = King.new(:white, self, [7,4])
        @rows[7][5] = Bishop.new(:white, self, [7,5])
        @rows[7][6] = Knight.new(:white, self, [7,6])
        @rows[7][7] = Rook.new(:white, self, [7,7])

        @rows[1].each_with_index do |piece, i|
            i = Pawn.new(:black, self, [1,i])
        end
        @rows[7].each_with_index do |piece, i|
            i = Pawn.new(:white, self, [7, i])
        end
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


    def in_check?(color)

    end

    def checkmate?
    end
end 