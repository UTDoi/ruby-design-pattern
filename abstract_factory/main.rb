require_relative 'factory'
require_relative 'list/list_factory'
require_relative 'table/table_factory'

if ARGV.size != 1
  p 'コマンド引数にfactory名を指定してください ex) list_factory'
  exit!
end

# AbstractFactoryとAbstractProductのインターフェースのみを使って処理を行う
# ConcreteClassに関しては一切関知しない
factory = Factory.get_factory(ARGV[0])

# ConcreteFactoryの入れ替えは簡単だが、AbstractProductの種類を増やすのは大変
asahi = factory.create_link('朝日新聞', 'http://asahi.com')
yomiuri = factory.create_link('読売新聞', 'http://yomiuri.com')

us_yahoo = factory.create_link('Yahoo', 'http://yahoo.com')
jp_yahoo = factory.create_link('Yahoo', 'http://yahoo.co.jp')
excite = factory.create_link('Excite', 'http://excite.com')
google = factory.create_link('Google', 'http://google.com')

traynews = factory.create_tray('新聞')
traynews.add(asahi)
traynews.add(yomiuri)

trayyahoo = factory.create_tray('Yahoo')
trayyahoo.add(us_yahoo)
trayyahoo.add(jp_yahoo)

traysearch = factory.create_tray('サーチエンジン')
traysearch.add(trayyahoo)
traysearch.add(excite)
traysearch.add(google)

page = factory.create_page('LinkPage', 'Alice')
page.add(traynews)
page.add(traysearch)
page.output