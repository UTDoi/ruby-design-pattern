require_relative 'entry'

# Composite ツリー構造における内部ノードと同じ
# 他のEntryを子としてメンバに持てる
class PseudoDirectory < Entry
  def initialize(name)
    @name = name
    @directory = []
    @parent = nil
  end

  def name
    @name
  end

  def size
    @directory.sum(&:size)
  end

  def parent=(parent)
    @parent = parent
  end

  def parent
    @parent
  end

  def add(entry)
    entry.parent = self
    @directory << entry
  end

  def child
    @directory
  end

  def _print_list(prefix)
    puts "#{prefix}/#{to_string}"
    @directory.each do |d|
      d._print_list("#{prefix}/#{name}")
    end
  end
end