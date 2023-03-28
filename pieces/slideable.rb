module Slideable 

    HORIZONTAL_DIRS = [1,0], [-1,0], [0,1], [0,-1]
    DIAGONAL_DIRS = [1,1],[1,-1],[-1,1],[-1,-1]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves()

        moves = [

        ]
        
        potential_moves = []  

        moves.each do |dx, dy|
                    
            start_pos[0], start_pos[1] = dx, dy
            potential_moves << [start_pos[0] + dx, start_pos[1] + dy]

        end 

`   end `

end 