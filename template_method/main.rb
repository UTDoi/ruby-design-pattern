require_relative 'char_displayer'
require_relative 'string_displayer'

displayers = []
displayers << CharDisplayer.new('H')
displayers << StringDisplayer.new('Design Pattern')
displayers << StringDisplayer.new('デザインパターン')

displayers.each do |displayer|
  displayer.display # リスコフの置換原則を満たし、polymorphismを実現している
end

