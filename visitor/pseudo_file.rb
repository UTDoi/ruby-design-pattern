require_relative 'entry'

class PseudoFile < Entry
  def initialize(name, size)
    @name = name
    @size = size
  end

  def name
    @name
  end

  def size
    @size
  end

  def child
    []
  end

  def accept(visitor)
    visitor.visit(self)
  end
end