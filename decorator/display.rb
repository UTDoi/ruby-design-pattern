# Component
# Decorationする前のオブジェクトのinterface
class Display
  def total_columns
    raise NotImplementedError
  end

  def total_rows
    raise NotImplementedError
  end

  def row_text(row)
    raise NotImplementedError
  end

  def show
    total_rows.times.with_index do |row, i|
      puts row_text(i)
    end
  end
end