require_relative 'border'

# Concrete Decorator
class FullBorder < Border
  def total_columns
    # コンポジションしたオブジェクト(ComponentかDecoratorかは気にしない)へ処理を委譲しつつ、クラス独自の処理も追加(decoration)する
    1 + @display.total_columns + 1
  end

  def total_rows
    1 + @display.total_rows + 1
  end

  def row_text(row)
    case row
    when 0, @display.total_rows+1
      "+#{'-' * @display.total_columns}+"
    else
      '|' + @display.row_text(row-1) + '|'
    end
  end
end