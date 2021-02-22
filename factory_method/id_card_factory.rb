require_relative 'factory'
require_relative 'id_card'

class IdCardFactory < Factory
  attr_reader :owners

  def initialize
    @owners = []
    @owner_code_map = {}
  end

  # 具象Productクラス(IdCard)への依存を持つのは、具象CreatorクラスであるIdCardFactory
  def create_product(owner)
    code = @owners.size + 1
    IdCard.new(owner, code)
  end

  def register_product(product)
    @owners << product.owner
    @owner_code_map = {product.code.to_s => product.owner}
  end
end