require 'singleton'
require_relative 'state'
require_relative 'night_state'

# ConcreteState
class DayState < State
  # 状態を表すクラスなので、内部状態(インスタンス変数)を持つ必要がないためSingletonとする
  include Singleton

  def do_clock(context, hour)
    if hour < 9 || 17 <= hour
      # 状態遷移メソッドをConcreteStateから呼び出している
      # つまりこのサンプルでは"状態遷移"自体を"状態に依存した振る舞い"とみなしている
      # メリットはコードがシンプルになることだが、デメリットとしては個々のConcreteStateが他のConcreteStateの状態を知らなければならなくなること
      # Mediatorパターンを使うと見通しがよくなりうる
      # つまりConcreteStateにmediatorをコンポジションし、mediatorのconsultationメソッドに処理を委譲してしまう
      # そして、mediator側で適切なConcreteStateを選択し、contextの状態遷移を行ってあげる
      context.change_state(NightState.instance)
    end
  end

  def do_use(context)
    context.record_log('金庫使用(昼間)')
  end

  def do_alerm(context)
    context.call_security_center('非常ベル(昼間)')
  end

  def do_phone(context)
    context.call_security_center('通常の電話(昼間)')
  end

  def to_string
    '[昼間]'
  end
end