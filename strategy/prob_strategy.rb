require_relative 'strategy'
require_relative 'hand'

# ConcreteStrategy 具体的なアルゴリズムを実装する
class ProbStrategy < Strategy
  def initialize
    @random = Random.new
    @prev_handvalue = 0
    @current_handvalue = 0
    @history = [[1, 1, 1,], [1, 1, 1,], [1, 1, 1,]] # history[前々回出した手][前回出した手] = 過去の勝数
  end

  def next_hand
    bet = @random.rand(get_sum(@current_handvalue))
    hand_value = if bet < @history[@current_handvalue][0]
                    0
                 elsif bet < @history[@current_handvalue][0] + @history[@current_handvalue][1]
                    1
                 else
                    2
                 end
    @prev_handvalue = @current_handvalue
    @current_handvalue = hand_value
    Hand.get_hand(hand_value)
  end

  def get_sum(hand_val)
    @history[hand_val].sum
  end

  def study(win)
    if win
      @history[@prev_handvalue][@current_handvalue] += 1
    else
      @history[@prev_handvalue][(@current_handvalue + 1) % 3] += 1
      @history[@prev_handvalue][(@current_handvalue + 2) % 3] += 1
    end
  end
end