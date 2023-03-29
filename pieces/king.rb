class King < Piece
    include Stepable

    def symbol
        ':♔'.colorize(color)
    end

    def move_diffs
        king_moves = [
            [1, 1], 
            [-1, 1], 
            [1, -1], 
            [-1, -1],
            [0, 1],
            [1, 0],
            [-1, 0],
            [0, -1]
        ]
    end

end