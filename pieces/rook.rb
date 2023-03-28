class Rook
    include Slideable

    def symbol
        ':R'.colorize(color)
    end

    def move_dirs
        horizontal_dirs
    end 

end 