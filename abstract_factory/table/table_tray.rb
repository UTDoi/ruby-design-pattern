require_relative '../tray'

module Table
  class TableTray < Tray
    def make_HTML
      buf = []
      buf << '<td>'
      buf << "<table width=\"100%\" border=\"1\"><tr>"
      buf << "<td bgcolor=\"#cccccc\" align=\"center\" colspan=\"#{@tray.size}\"><b>#{@caption}</b></td></tr>\n"
      buf << "<tr>\n"
      @tray.each do |t|
        buf << t.make_HTML
      end
      buf << "</tr></table>\n"
      buf << "</td>\n"
      buf.join
    end
  end
end