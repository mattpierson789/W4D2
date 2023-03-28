
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

    def moves()
        row, col = piece.pos

        moves = [

        ]

        potential_moves = [] 
        
        move_dirs.each do |move|                        #rook, #getting from piece logic

            potential_moves += grow_unblocked_moves_in_dir(move[0], move[1])

        end 

        potential_moves
`   end `

    private 
    def move_dirs
        raise "Not implemented"


    end

    def grow_unblocked_moves_in_dir(dx, dy)
        row, col = piece.pos

        potential_moves = []

        #board.valid_pos is checking inbounds and board.empty 
        #is checking if there is a piece there


        piece_mov_dirs.each do |direction|                          #coming from piece logic - not figured yet.

            while board.valid_pos?([row + dx, col + dy]) 

                #check if position is ocupied by an ememy piece
                if    board.empty?([row + dx, col + dy])
                    potential_moves << [row + dx, col + dy]

                elsif board([row + dx, col + dy]).piece.color != piece.color
                    potential_moves << [row + dx, col + dy]
                    break
                else
                    break
                    
                end
            end    
        end 

        
    end

        # potential_moves << [row + dx, col + dy]

        # potential_moves


end 