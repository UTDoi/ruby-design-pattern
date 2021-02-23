require_relative 'manager'
require_relative 'message_box'
require_relative 'underline_pen'

manager = Manager.new
# これらが無数に増えていき、それぞれをクラスに分けると管理が大変になる
upen = UnderlinePen.new('~')
mbox = MessageBox.new('*')
sbox = MessageBox.new('/')
manager.register('strong message', upen)
manager.register('warning box', mbox)
manager.register('slash box', sbox)

products = []
products << manager.create('strong message')
products << manager.create('warning box')
products << manager.create('slash box')

products.each {|product| product.use('Hello, World')}
