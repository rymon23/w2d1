require_relative "piece"
require_relative "stepable"

class Knight < Piece
  include Stepable 

   def initialize
    super(color,board,pos)
    @symbol = :KNT
  end 
end