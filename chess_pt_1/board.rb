require_relative "game"
require_relative "piece"
require_relative "pawn"
require_relative "bishop"
require_relative "king"
require_relative "knight"
require_relative "queen"
require_relative "rook"
require_relative "null_piece"
require "byebug"


class Board
  attr_reader :rows , :game, :symbol

  COLORS = [:white, :black]

  def initialize
    # @game = game
    @rows = Array.new(8) { Array.new(8, NullPiece.instance) }
    self.populate_board
  end

  def populate_board
    (0..1).each do |i|
      setup_pieces(COLORS[i])
    end
  end

  def setup_pieces(color)
    if color == :white
      #player 1
      self.rows.each_with_index do |row, i|
        row.each_with_index do |col, j|
          pos = [i,j]
          if i == 1
            self[pos] =Pawn.new(color, self, pos)
          elsif i == 0 
            if (j == 0 || j == 7)
              self[pos] = Rook.new(color, self, pos)
            elsif (j == 1 || j == 6)
              self[pos] = Knight.new(color, self, pos)
            elsif (j == 2 || j == 5)
              self[pos] = Bishop.new(color, self, pos)
            elsif (j == 3)
              self[pos] = King.new(color, self, pos)
            elsif (j == 4)
              self[pos] = Queen.new(color, self, pos)
            end
          # else
          #   self[pos] = NullPiece.instance
          end
        end
      end

    else
      #player 2

      self.rows.each_with_index do |row, i|
        row.each_with_index do |col, j|
          pos = [i,j]
          if i == 6
            self[pos] =Pawn.new(color, self, pos)
          elsif i == 7 
            if (j == 0 || j == 7)
              self[pos] = Rook.new(color, self, pos)
            elsif (j == 1 || j == 6)
              self[pos] = Knight.new(color, self, pos)
            elsif (j == 2 || j == 5)
              self[pos] = Bishop.new(color, self, pos)
            elsif (j == 4)
              self[pos] = King.new(color, self, pos)
            elsif (j == 3)
              self[pos] = Queen.new(color, self, pos)
            end
          # else
          #   self[pos] = NullPiece.instance
          end
        end
      end
    end
    nil
  end

  def print_board
    # border_col = ""
    # self.rows[0].each do |col|
    #   border_col += "______"
    # end
    # puts border_col

    self.rows.each do |row|
      disp_row = ""
      row.each do |col|
        if col.nil?
          disp_row += "  "
        else
          disp_row += "  #{col.symbol}  "
        end
      end
      puts 
      puts disp_row
    end

  end

  def [](pos)
    row,col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    # return unless valid_pos?(pos)
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

b= Board.new
b.print_board