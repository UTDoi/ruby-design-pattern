require_relative 'display'

# 機能のクラス階層
# RefinedAbstraction
class CountDisplay < Display

  # 追加された機能
  # 機能の追加に関しては継承を使う
  def multi_display(count)
    _open
    count.times { _print }
    _close
  end
end