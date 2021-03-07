require_relative 'page_maker'

# Client側からはFacadeのを呼び出すだけ
PageMaker.make_welcome_page('alice@sample.com', 'welcome.html')
PageMaker.make_link_page('linkpage.html')