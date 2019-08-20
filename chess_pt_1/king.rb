require_relative "stepable"
require_relative "piece"

class King < Piece

  include Stepable

  MOVES_KING = [
    [-1,0],
    [-1,1],
    [0,1],
    [1,1],
    [1,0],
    [1,-1],
    [0,-1],
    [-1,-1]
  ]

  def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :KNG
  end

  def move_dirs
    MOVES_KING
  end
end