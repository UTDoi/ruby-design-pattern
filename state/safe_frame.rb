require_relative 'context'
require_relative 'day_state'

class SafeFrame < Context
  def initialize
    # インスタンス変数としてConcreteStateインスタンスを持ち、状態に応じた振る舞いをそれに委譲する
    # Strategyパターンもコンポジションしたオブジェクトに振る舞いを委譲する点では似ているが、Stateパターンでは"状態"により振る舞いが変わることが重要である
    # つまり、委譲元(Context)のライフサイクルに応じてコンポジションするConcreteStateインスタンスが変わりうるということ
    # 実際、change_stateメソッドで現在時刻に応じてコンポジションするConcreteStateが変化している(正確には現在時刻に応じてセットするインスタンスを変えてるのはStateのdo_clockメソッドの中でだが)
    # Strategyパターンの場合は委譲元(Context)の状態というのはあまり意識されず、初回にConcreteStrategyがinjectionされた後は変化しないことが多い
    @state = DayState.instance
  end

  def action_performed(event_name)
    case event_name
    when 'button_use'
      @state.do_use(self)
    when 'button_alerm'
      @state.do_alerm(self)
    when 'button_phone'
      @state.do_phone(self)
    when 'button_exit'
      exit 0
    else
      puts '?'
    end
  end

  def set_clock(hour)
    clock_string = '現在時刻は'
    if hour < 10
      clock_string += "0#{hour}:00"
    else
      clock_string += "#{hour}:00"
    end
    puts clock_string
    @state.do_clock(self, hour)
  end

  def change_state(state)
    puts "#{@state.to_string}から#{state.to_string}に状態が変化しました"
    @state = state
  end

  def call_security_center(msg)
    puts "call_security_center: #{msg}"
  end

  def record_log(msg)
    puts "record_log: #{msg}"
  end
end