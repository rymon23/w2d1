require_relative "slideable"
require_relative "piece"

class Rook < Piece
  include Slideable

  def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :ROK
  end

  def move_dirs
    horizontal_dirs
  end

end
