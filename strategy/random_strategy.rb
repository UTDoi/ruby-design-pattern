require_relative 'strategy'
require_relative 'hand'

class RandomStrategy < Strategy
  def initialize
    @random = Random.new
  end

  def next_hand
    Hand.get_hand(@random.rand(3))
  end

  def study
    # 何もしない
  end
end