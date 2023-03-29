require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"


class Display
    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        @board = board 
    end

    def render
        system("clear")
        
    end

    def render
        system('clear')
        puts "   a  b   c   d   e   f   g   h"
        @board.rows.each_with_index do |row, i|
          print "#{8 - i} "
          row.each_with_index do |piece, j|
            if piece.nil?
              print '  '.colorize(background: ((i + j) % 2 == 0 ? :light_white : :light_black))
            else
              print " #{piece.symbol} ".colorize(color: piece.color, background: ((i + j) % 2 == 0 ? :light_white : :light_black))
            end
          end
          puts " #{8 - i}"
        end
        puts "   a  b   c   d   e   f   g   h"
      end
      
      
      

    

end

b = Board.new
d = Display.new(b)
d.render