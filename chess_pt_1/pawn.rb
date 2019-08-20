require_relative "piece"

class Pawn < Piece
  attr_reader :color,:board,:pos,:symbol

   def initialize(color, board, pos)
    super(color,board,pos)
    @symbol = :PWN
  end 
end