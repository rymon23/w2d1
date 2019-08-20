require_relative "piece"
require_relative "stepable"

require "byebug"

  

class Knight < Piece

  include Stepable 

  MOVES_KNIGHT = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]

  def initialize(color, board, pos)
    super(color,board,pos)
    @symbol = :KNT
  end 

  def move_dirs
    MOVES_KNIGHT
  end
end