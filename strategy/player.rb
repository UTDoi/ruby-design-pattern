# Context ConcreteStrategyインスタンスをhas-a(コンポジション)で持ち、必要に応じて処理を委譲する
# template methodパターンがアルゴリズムの拡張に対して継承ベースで実現しているのに対し、strategyパターンでは委譲ベースで実現している
# そのため、template methodパターンに比べ実行時のアルゴリズム切り替えが比較的容易である
class Player
  attr_reader :name

  # constructor injectionでも何でもいいが、とにかく外部から依存strategyを動的に注入できるようにする
  def initialize(name, strategy)
    @name = name
    @strategy = strategy
    @wincount = 0
    @losecount = 0
    @gamecount = 0
  end

  # 委譲の際、Strategyインターフェースに依存するのでConcreteStrategyは容易に入れ替え可能
  def next_hand
    @strategy.next_hand
  end

  def win
    @strategy.study(true)
    @wincount += 1
    @gamecount += 1
  end

  def lose
    @strategy.study(false)
    @losecount += 1
    @gamecount += 1
  end

  def even
    @gamecount += 1
  end

  def to_string
    "[#{@name}:#{@gamecount}games, #{@wincount}win, #{@losecount}lose]"
  end
end