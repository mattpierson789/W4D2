require_relative "piece.rb"

class NullPiece < Piece
    include Singleton

    def initialize(color, board, pos)
        @color = nil
        @board = board
        @pos = pos
    end

    def moves
        []
    end

    def symbol
        " "
    end

end