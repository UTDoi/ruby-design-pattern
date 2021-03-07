class HtmlWriter
  def initialize(writer)
    @writer = writer
  end

  def write_title(title)
    @writer.puts '<html>'
    @writer.puts '<head>'
    @writer.puts "<title>#{title}</title>"
    @writer.puts '</head>'
    @writer.puts "<body>\n"
    @writer.puts "<h1>#{title}</h1>\n"
  end

  def write_paragraph(msg)
    @writer.puts "<p>#{msg}</p>\n"
  end

  def write_link(href, caption)
    @writer.puts(write_paragraph("<a href=#{href}>#{caption}</a>"))
  end

  def write_mailto(mail, username)
    write_link("malito: #{mail}", username)
  end

  def close
    @writer.puts '</body>'
    @writer.puts "</html>\n"
    @writer.close
  end
end