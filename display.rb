require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"

#can hold reference to board which then holds grid
#telling 
class Display
    def initialize
        @cursor = Cursor.new([0,0], @board)
    end

    # def render
    #     system("clear")
        
    # end

    # def render
    #     system('clear')
    #     puts "   a b c d e f g h"
    #     @board.each_with_index do |row, i|
    #       print "#{8 - i} "
    #         row.each_with_index do |piece, j|
    #             if piece.nil?
    #             print '  '.colorize(background: ((i + j) % 2 == 0 ? :light_white : :light_black))
    #             else
    #             print " #{piece.symbol} ".colorize(color: piece.color, background: ((i + j) % 2 == 0 ? :light_white : :light_black))
    #             end
    #       end
    #       puts " #{8 - i}"
    #     end
    #     puts "   a b c d e f g h"
    # end

    #screwedoku
    # def render
    #     puts "  #{(0..8).to_a.join(" ")} " #don't need these
    #     grid.each_with_index do |row, i|
    #       puts "#{i} #{row.join(" ")}"
    #     end
    # end
end

# b = Board.new
# d = Display.new
# d.render