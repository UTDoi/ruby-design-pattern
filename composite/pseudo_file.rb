require_relative 'entry'

# Leaf ツリー構造におけるleafノードと同じ
# 中身を表すので、他のEntryは子として持てない
class PseudoFile < Entry
  def initialize(name, size)
    @name = name
    @size = size
    @parent = nil
  end

  def name
    @name
  end

  def size
    @size
  end

  def parent=(parent)
    @parent = parent
  end

  def parent
    @parent
  end

  def _print_list(prefix)
    puts "#{prefix}/#{to_string}"
  end
end