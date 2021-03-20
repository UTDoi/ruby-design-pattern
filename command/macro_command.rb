require_relative 'command'

# ConcreteCommand
class MacroCommand < Command
  def initialize
    @commands = []
  end

  def execute
    @commands.each(&:execute)
  end

  def append(cmd)
    @commands.push(cmd) unless cmd == self
  end

  def undo
    @commands.pop unless @commands.empty?
  end

  def clear
    @commands.clear
  end
end