require_relative 'string_display'
require_relative 'side_border'
require_relative 'full_border'
require_relative 'up_down_border'

d1 = StringDisplay.new('Hello, World')
d1.show
d2 = SideBorder.new(d1, '#')
d2.show
d3 = FullBorder.new(d2)
d3.show
d4 = UpDownBorder.new(d3)
d4.show

# 中身も飾り枠も共通のインターフェースを持っているため、機能を追加したいときは単に新しいConcrete Decoratorで包んでやればいい
d5 = SideBorder.new(
  FullBorder.new(
    FullBorder.new(
      SideBorder.new(
        StringDisplay.new('hoge'),
        '$'
      )
    ),
  ), '/'
)
d5.show