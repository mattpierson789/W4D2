class Bishop
    include Slideable

    def symbol
        ':♗'.colorize(color)
    end

    def move_dirs
        diagonal_dirs
    end 

end 