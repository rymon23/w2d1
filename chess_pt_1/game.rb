require_relative "display"
require_relative "board"
require_relative "player"

class Game
  attr_reader :board,:display,:players,:current_player

  def initialize
    @board = Board.new
    @display = Display.new
    @players 
  end

  def play
  end

  private
  def notify_players

  end

  def swap_turn!

  end
end