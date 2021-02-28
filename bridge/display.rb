# Abstraction
class Display
  def initialize(impl)
    @impl = impl
  end

  # 継承ではなくImplementorへの委譲によって、実装の入れ替えを可能にする
  def _open
    @impl.raw_open
  end

  def _print
    @impl.raw_print
  end

  def _close
    @impl.raw_close
  end

  def display
    _open
    _print
    _close
  end
end