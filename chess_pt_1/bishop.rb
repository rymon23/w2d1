require_relative "slideable"
require_relative "piece"

class Bishop < Piece
  include Slideable

  def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :BIS
  end

  def move_dirs
    diagonal_dirs
  end

end