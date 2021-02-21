require_relative 'abstract_displayer'

class CharDisplayer < AbstractDisplayer
  def initialize(char)
    @char = char
  end

  def _open
    print '<<'
  end

  def _print
    print @char
  end

  def _close
    puts '>>'
  end
end