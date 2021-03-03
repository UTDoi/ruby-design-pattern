# Component
# LeafとCompositeを同一視するためのsuperclass
class Entry
  class FileTreatmentError < StandardError; end

  # LeafもCompositeも同じインターフェースを持つことで同一視できる
  def name
    raise NotImplementedError
  end

  def size
    raise NotImplementedError
  end

  def parent
    raise NotImplementedError
  end

  def parent=(parent)
    raise NotImplementedError
  end

  # add, get_childのような、子を持っていることを前提としたメソッドはLeafでは実装せず、Compositeでのみ実装する
  # Component側でエラーをraiseさせるような実装にしておくことで、Leafで呼ばれた際はエラーが出るようにする
  def add(entry)
    raise FileTreatmentError.new
  end

  def child()
    raise FileTreatmentError.new
  end

  def print_list
    _print_list('')
  end

  def to_string
    "#{name} (#{size})"
  end

  def full_path
    path = []
    entry = self
    loop do
      path << entry.name
      entry = entry.parent
      break if entry.nil?
    end
    path.reverse.join('/')
  end

  def _print_list(prefix)
    raise NotImplementedError
  end
end