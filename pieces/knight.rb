class Knight < Piece
    include Stepable

    def symbol
        ':♘'.colorize(color)
    end

    def move_diffs
        knight_moves = [
            [1, 2], 
            [-1, 2], 
            [1, -2], 
            [-1, -2],
            [2, 1],
            [-2, 1],
            [2, -1],
            [-2, -1]
        ]
    end

end