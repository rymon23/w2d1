module Stepable

  def moves
    valid_moves = []
    cur_x, cur_y = pos
    move_dirs.each do |(dx, dy)|
      new_pos = [cur_x + dx, cur_y + dy]
      if new_pos.all? { |coord| coord.between?(0, 7) }
        valid_moves << new_pos
      end
    end
    valid_moves
  end

  private 

  def move_dirs
  end

end