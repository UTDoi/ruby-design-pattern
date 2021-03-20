require_relative 'command'

# ConcreteCommand
class DrawCommand < Command
  def initialize(drawable, position)
    @drawable = drawable
    @position = position
  end

  def execute
    @drawable.draw(@position[:x], @position[:y])
  end
end