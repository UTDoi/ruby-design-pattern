require_relative 'abstract_displayer'

class StringDisplayer < AbstractDisplayer

  def initialize(str)
    @str = str
    @width = str.bytesize
  end

  private

  def _open
    _print_line
  end

  def _print
    puts "|#{@str}|"
  end

  def _close
    _print_line
  end

  def _print_line
    puts "+#{"-" * @width}+"
  end
end