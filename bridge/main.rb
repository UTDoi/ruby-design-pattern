require_relative 'display'
require_relative 'count_display'
require_relative 'random_display'
require_relative 'string_display_impl'
require_relative 'text_file_display_impl'

d1 = Display.new(StringDisplayImpl.new('Hello, Japan.'))
d2 = CountDisplay.new(StringDisplayImpl.new('Hello, World'))
d3 = CountDisplay.new(StringDisplayImpl.new('Hello, Universe'))
d4 = RandomDisplay.new(StringDisplayImpl.new('Hello, USA'))
d5 = CountDisplay.new(TextFileDisplayImpl.new('hoge.txt'))

d1.display
d2.display
d3.display
d3.multi_display(5)
d4.random_display
d5.multi_display(2)