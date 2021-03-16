# 状態を表すクラス
# 状態ごとに異なる振る舞いをするインターフェース(API)を定め、こいつを実装するConcreteStateで実際の振る舞いを個別に実装する
# つまり、状態に依存した振る舞いをするメソッドの集まり
class State
  def do_clock
    raise NotImplementedError
  end

  def do_use
    raise NotImplementedError
  end

  def do_alerm
    raise NotImplementedError
  end

  def do_phone
    raise NotImplementedError
  end
end