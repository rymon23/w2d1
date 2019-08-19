require_relative "piece"

class Pawn < Piece
   def initialize(color,board,pos)
    super(color,board,pos)
    @symbol = :PWN
  end 
end