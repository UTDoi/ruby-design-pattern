require_relative 'display_impl'

# ConcreteImplementor
class StringDisplayImpl < DisplayImpl
  def initialize(str)
    @str = str
    @width = str.bytesize
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{@str}|"
  end

  def raw_close
    print_line
  end

  def print_line
    print '+'
    @width.times { print '-' }
    print '+'
    puts ''
  end
end