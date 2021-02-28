require_relative '../page'

module Table
  class TablePage < Page
    def make_HTML
      buf = []

      buf << "<html><head><title>#{@title}</title></head>\n"
      buf << "<body>\n"
      buf << "<h1>#{@title}</h1>\n"
      buf << "<table width=\"80%\" border=\"3\">\n"
      @content.each do |c|
        buf << "<tr>#{c.make_HTML}</tr>"
      end
      buf << "</table>\n"
      buf << "<hr><address>#{@author}</address></hr>"
      buf << "</body></html>\n"
      buf.join
    end
  end
end
