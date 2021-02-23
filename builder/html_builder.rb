require_relative 'builder'

class HtmlBuilder < Builder
  attr_reader :result

  def initialize
    @result = ''
    @writer = nil
  end

  def make_title(title)
    filename = "#{title}.html"
    @writer = File.open(filename, 'w')
    @writer.puts <<~HTML
      <html>
        <head>
          <title>#{title}</title>
        </head>
        <body>
          <h1>#{title}</h1>
    HTML
  end

  def make_string(str)
    @writer.puts <<~HTML
      <p>#{str}</p>
    HTML
  end

  def make_items(items)
    @writer.puts '<ul>'
    items.each do |item|
      @writer.puts "<li>#{item}</li>"
    end
    @writer.puts '</ul>'
  end

  def close
    @writer.puts '</body></html>'
    @writer.close
    @result << "#{@writer.path}が作成されました"
  end
end