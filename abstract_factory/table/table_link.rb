require_relative '../link'

module Table
  class TableLink < Link
    def make_HTML
      "<td><a href=\"#{@url}\">#{@caption}</a></td>\n"
    end
  end
end
