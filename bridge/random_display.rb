require_relative 'display'

class RandomDisplay < Display
  def random_display
    _open
    rand(1..9).times { _print }
    _close
  end
end