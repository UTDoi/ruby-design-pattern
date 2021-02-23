require_relative 'builder'

class MarkdownBuilder < Builder
  attr_reader :result

  def initialize
    @result = ''
    @writer = nil
  end

  def make_title(title)
    filename = "#{title}.md"
    @writer = File.open(filename, 'w')
    @writer.puts "# #{title}"
  end

  def make_string(str)
    @writer.puts "## #{str}"
  end

  def make_items(items)
    items.each do |item|
      @writer.puts "- #{item}"
    end
  end

  def close
    @writer.close
    @result << "#{@writer.path}が作成されました"
  end
end