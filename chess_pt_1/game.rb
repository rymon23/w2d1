require_relative "display"
require_relative "board"
require_relative "player"

class Game
  attr_reader :board,:display,:players,:current_player



  def initialize
    @board = Board.new
    @display = Display.new
    self.setup_players
  end

  def setup_players
    @players = {}
    2.times do |t|
      players[COLORS[t]] = Player.new(COLORS[t], "change later")
    end
    puts "players setup"
  end

  def play
  end

  private
  def notify_players

  end

  def swap_turn!

  end
end