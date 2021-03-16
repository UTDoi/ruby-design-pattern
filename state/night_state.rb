require 'singleton'
require_relative 'state'
require_relative 'day_state'

# ConcreteState
class NightState < State
  include Singleton

  def do_clock(context, hour)
    if hour >= 9 && 17 > hour
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.record_log('非常: 夜間の金庫使用!')
  end

  def do_alerm(context)
    context.call_security_center('非常ベル(夜間)')
  end

  def do_phone(context)
    context.call_security_center('夜間の通話録音')
  end

  def to_string
    '[夜間]'
  end
end