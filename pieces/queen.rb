class Rook
    include Slideable

    def symbol
        ':Q'.colorize(color)
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs


    end 

end 