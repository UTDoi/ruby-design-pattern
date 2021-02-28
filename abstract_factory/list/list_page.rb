require_relative '../page'

module List
  class ListPage < Page
    def make_HTML
      buf = []

      buf << "<html><head><title>#{@title}</title></head>\n"
      buf << "<body>\n"
      buf << "<h1>#{@title}</h1>\n"
      buf << "<ul>\n"
      @content.each do |c|
        buf << c.make_HTML
      end
      buf << "</ul>\n"
      buf << "<hr><address>#{@author}</address></hr>"
      buf << "</body></html>\n"
      buf.join
    end
  end
end
