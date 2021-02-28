require_relative '../tray'

module List
  class ListTray < Tray
    def make_HTML
      buf = []
      buf << "<li>\n"
      buf << "#{@caption}\n"
      buf << "<ul>\n"
      @tray.each do |t|
        buf << t.make_HTML
      end
      buf << "</ul>\n"
      buf << "</li>\n"
      buf.join
    end
  end
end