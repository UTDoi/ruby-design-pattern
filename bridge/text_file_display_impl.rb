require_relative 'display_impl'

# ConcreteImplementor
class TextFileDisplayImpl < DisplayImpl
  def initialize(filename)
    @filename = filename
  end

  def raw_open
    @reader = File.open(@filename, 'r')
  end

  def raw_print
    @reader.rewind if @reader.eof?
    text = @reader.read
    puts text
  end

  def raw_close
    @reader.close
  end
end