class Rook
    include Slideable

    def symbol
        ':Q'.colorize(color)
    end

    def move_dirs
       queen_dirs += horizontal_dirs + diagonal_dirs

       queen_dirs

    end 

end 