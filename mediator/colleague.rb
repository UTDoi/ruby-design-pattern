class Colleague
  # 通知先のmediatorをインスタンス変数にセットするためのメソッド
  # 別にsetter injectionでなくてもconstructor injectionとかでもいい
  def set_mediator(mediator)
    @mediator = mediator
  end

  # mediatorがcolleagueへ処理の実行を命ずるためのインターフェース
  def set_colleague_enabled(enabled)
    raise NotImplementedError
  end
end