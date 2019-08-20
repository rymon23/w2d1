module Slideable
  HORIZONTAL_DIRS = [ 
    [-1,0],
    [1,0],
    [0,-1],
    [0,1]
  ]

  DIAGONAL_DIRS = [
    [-1,-1],
    [-1,1],
    [1,1],
    [1,-1]
  ]

  def horizontal_dirs 
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    valid_moves = []
    move_dirs.each do |(dx, dy)|
      valid_moves += grow_unblocked_moves_in_dir(dx, dy)
    end
    valid_moves
  end

  private 

  def move_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    # pos = [0,0]
    valid_moves = []
    off_board = false
    until off_board #|| board[pos] != NullPiece.instance
      off_board = true
      cur_x, cur_y = pos
      new_pos = [cur_x + dx, cur_y + dy]
      if new_pos.all? { |coord| coord.between?(0, 7) }
        valid_moves << new_pos
        pos = new_pos
        off_board = false
      end
    end
    valid_moves
  end
end