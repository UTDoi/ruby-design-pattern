require_relative '../link'

module List
  class ListLink < Link
    def make_HTML
      "<li><a href=\"#{@url}\">#{@caption}</a></li>\n"
    end
  end
end
