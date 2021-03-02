require_relative 'strategy'
require_relative 'hand'

# ConcreteStrategy 具体的なアルゴリズムを実装する
class WinningStrategy < Strategy
  def initialize
    @random = Random.new
    @won = false
    @prev_hand = nil
  end

  def next_hand
    return @prev_hand if @won
    @prev_hand = Hand.get_hand(@random.rand(3))
  end

  def study(win)
    @won = win
  end
end