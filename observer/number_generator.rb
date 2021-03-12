# Subject=観測対象(RxではObservableとも呼ばれる)
class NumberGenerator
  def initialize
    # 自身を観測する(subscribeする)observerをインスタンス変数に保有しておく
    @observers = []
  end

  # 外部からobserverを追加できるようにしておく
  def add_observer(observer)
    @observers << observer
  end

  # 不要になったobserverをremoveできるメソッドも用意しておく
  def remove_observer(observer)
    @observer.reject! {|ob| ob == observer }
  end

  # observerに通知を行いたいタイミングでこのメソッドを呼び出す
  # 他の何かしらのメソッド(executeとか)の終了間際とか、開始直後とか、任意のタイミングでこいつを呼び出して通知を行える
  def notify_observers
    # Observerインターフェースのupdateメソッドの呼び出しを介して通知を行う
    # 今回はpayloadとしてインスタンス自身を送っているが、文字列値や数値などのみを送るようにすることでSubjectの独立性を高め(observerからの依存度が減るので)、Subjectの入れ替え可能性を高めることもできる
    # しかしそうした場合、SubjectがObserverに何を送るべきかについての強い知識を持つことになってしまい、逆にObserverの独立性は弱まり入れ替えが困難になりうる(updateメソッドの引数がobserverのデータ構造を意識したものとかになってくるとやばそう)
    @observers.each {|ob| ob.update(self) }
  end

  def get_number
    raise NotImplementedError
  end

  def execute
    raise NotImplementedError
  end
end