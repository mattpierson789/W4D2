require "singleton"

class NullPiece < Piece
    include Singleton

    def initialize
        @color = nil
    end

    def moves
        []
    end

    def symbol
        "  " #maybe put a different symbol
    end

end