require_relative 'factory'
require_relative 'television'

class TelevisionFactory < Factory
  attr_reader :owners

  def initialize
    @owners = []
  end

  # 具象Productクラス(Television)への依存を持つのは、具象CreatorクラスであるTelevisionFactory
  def create_product(owner)
    keisyo = "様"
    Television.new(owner, keisyo) # Televisionのインスタンス生成についての知識をここに集約しておける
  end

  def register_product(product)
    @owners << product.owner
  end
end