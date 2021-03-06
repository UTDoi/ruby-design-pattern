require_relative 'border'

# Concrete Decorator
class UpDownBorder < Border
  def total_columns
    @display.total_columns
  end

  def total_rows
    1 + @display.total_rows + 1
  end

  def row_text(row)
    case row
    when 0, @display.total_rows+1
      '-' * @display.total_columns
    else
      @display.row_text(row-1)
    end
  end
end