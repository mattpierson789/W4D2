require_relative "piece.rb"
require_relative "board.rb"

module Slideable 

    HORIZONTAL_DIRS = [[1,0], [-1,0], [0,1], [0,-1]]
    DIAGONAL_DIRS = [[1,1],[1,-1],[-1,1],[-1,-1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        potential_moves = [] 
        
        move_dirs.each do |direction|   #rook, #getting from piece logic

            potential_moves += grow_unblocked_moves_in_dir(direction[0], direction[1])

        end 

        potential_moves
`   end `

    private 

    def move_dirs
        raise "Not implemented"
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        row, col = self.pos

        potential_moves = []

        #board.valid_pos is checking inbounds and board.empty 
        #is checking if there is a piece there

        limit = self.pos
        new_pos = [ row + dx, col + dy]
        while board.valid_pos?(new_pos)    
            if board[new_pos].empty? #*we haven't written empty yet
                potential_moves << [new_pos]  
            elsif board[new_pos].piece.color != self.color #this might be self color?
                potential_moves << [new_pos]
                break
            else
                break
            end
            limit = new_pos
        end    

        potential_moves
        
    end



end 