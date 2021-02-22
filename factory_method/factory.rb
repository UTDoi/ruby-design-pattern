class Factory
  # template method
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  # factory method
  # 具体的なインスタンス生成はsub classに任せることで、具象Productクラスへの依存をsuper classから取り除く
  def create_product(owner)
    raise NotImplementedError
  end

  def register_product(product)
    raise NotImplementedError
  end
end