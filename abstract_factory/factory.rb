# ConcreteFactoryを生成するclass methodと、ConcreteProductを生成するメソッドのインターフェースを持つ
class Factory
  def self.get_factory(factory_name)
    module_name = factory_name.split('_').first.capitalize
    Object.const_get("#{module_name}::#{module_name}Factory").new
  end

  # あるAbstractFactoryはあるAbctractProduct群を生成する責務を持つため、それら部品に対しては強く結合しているといえる
  # したがってAbstractFactoryで生成するAbstractProductの種類を増やすのは容易ではない
  def create_link(caption, url)
    raise NotImplementedError
  end

  def create_tray(caption)
    raise NotImplementedError
  end

  def create_page(title, author)
    raise NotImplementedError
  end
end