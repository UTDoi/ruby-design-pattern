require_relative 'builder'

class TextBuilder < Builder
  attr_reader :result

  def initialize
    @result = ''
  end

  def make_title(title)
    @result << "====================\n"
    @result << "『#{title}』\n"
    @result << "\n"
  end

  def make_string(str)
    @result << "##{str}\n"
    @result << "\n"
  end

  def make_items(items)
    items.each do |item|
      @result << "・#{item}\n"
    end
    @result << "\n"
  end

  def close
    @result << "====================\n"
  end
end