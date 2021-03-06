require_relative 'display'

# Decorator
# Decorationする(機能を追加する)Wrapperとしてのクラス
# こいつがComponentを継承(interfaceの実装でもいいが)をしており、更にConcrete Componentをコンポジションしているのがポイント
class Border < Display

  # Component(=Display)のサブクラスを受け付けるようにすることで、Concrete ComponentかConcrete Decoratorかを気にせず透過的に扱える
  # 中身(=Component)と飾り枠(=Decorator)の同一視
  def initialize(display)
    @display = display
  end
end