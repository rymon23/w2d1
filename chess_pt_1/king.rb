require_relative "stepable"
require_relative "piece"

class King < Piece
  include Stepable

  def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :KNG
  end
end