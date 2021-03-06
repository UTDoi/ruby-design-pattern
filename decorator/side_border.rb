require_relative 'border'

# Concrete Decorator
class SideBorder < Border
  def initialize(display, ch)
    super(display)
    @border_char = ch
  end

  def total_columns
    1 + @display.total_columns + 1
  end

  def total_rows
    @display.total_rows
  end

  def row_text(row)
    @border_char + @display.row_text(row) + @border_char
  end
end