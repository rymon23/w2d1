require_relative "slideable"
require_relative "piece"

class Queen < Piece
  include Slideable

  def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :QUN
  end

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

end