require_relative 'id_card_factory'
require_relative 'television_factory'

factories = []
# 作りたいProductごとに対応する具象Creator(factory)を生成
factories << IdCardFactory.new
factories << TelevisionFactory.new

products = factories.flat_map do |factory|
# Creatorインターフェースは同じなので、全factoryからまとめて生成
  [
    factory.create('Alice'),
    factory.create('Bob'),
    factory.create('Carol'),
  ]
end

# Productインターフェースも同じなので、あるCreatorインターフェースから生成されたProductインスタンスにはまとめてメッセージを送れる
products.each(&:use)



