require_relative 'list_link'
require_relative 'list_tray'
require_relative 'list_page'

module List
  class ListFactory < Factory
    # ConcreteFactoryは、対応するConcreteProduct群のインスタンス生成についての知識を持つ
    def create_link(caption, url)
      ListLink.new(caption, url)
    end

    def create_tray(caption)
      ListTray.new(caption)
    end

    def create_page(title, author)
      ListPage.new(title, author)
    end
  end
end
