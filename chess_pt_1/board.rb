require_relative "piece"

class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8) { Array.new(8) }
  end

  def [](pos)
    row,col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    return unless valid_pos?(pos)
    row,col = pos
    @rows[row][col] = val
  end

  def move_piece(color, start_pos, end_pos)

  end

  def valid_pos?(pos)
    row,col = pos
    return false unless (row >= 0 && row <= 7) && (col >= 0 && col <= 7)
    true
  end

  def add_piece(piece, pos)
    self[pos] = piece
  end

  def checkmate?(color)
    find_king(color)

  end

  def in_check?(color)

  end

  def find_king(color)
    (0..7).each do |row|
      (0..7).each do |col|
        return [row, col] if piece.symbol == :KNG
      end
    end
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

  private
  
  def sentinel
    @sentinel = NullPiece.new
  end

end