require_relative 'entry'

class PseudoDirectory < Entry
  def initialize(name)
    @name = name
    @directory = []
  end

  def name
    @name
  end

  def size
    @directory.sum(&:size)
  end

  def add(entry)
    @directory << entry
  end

  def child
    @directory
  end

  def accept(visitor)
    visitor.visit(self)
  end
end