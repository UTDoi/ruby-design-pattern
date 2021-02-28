class Page
  def initialize(title, author)
    @title = title
    @author = author
    @content = []
  end

  def add(item)
    @content << item
  end

  def output
    filename = "#{@title}.html"
    writer = File.open(filename, 'w')
    writer.puts(self.make_HTML)
    writer.close
    p "#{filename}を作成しました"
  end

  def make_HTML
    raise NotImplementedError
  end
end