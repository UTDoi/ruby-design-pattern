class Mediator
  def create_colleagues
    raise NotImplementedError
  end

  # colleagueが、自身になにか変更があったときこのメソッドを呼び出してmediatorに変更を通知する
  # mediatorは現在のcolleaguesの状態と受け取った通知内容から、適切な処理を実行する
  def colleague_changed
    raise NotImplementedError
  end
end