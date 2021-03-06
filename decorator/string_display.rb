require_relative 'display'

# Concrete Component
# Decorationされる具体的なクラス
class StringDisplay < Display
  def initialize(str)
    @str = str
  end

  def total_columns
    @str.bytesize
  end

  def total_rows
    1
  end

  def row_text(row)
    @str if row.zero?
  end
end