class Television
  attr_reader :owner

  def initialize(owner, keisyo)
    @owner = "#{owner}#{keisyo}"
    p "#{@owner}のTVを作ります。"
  end

  def use
    p "#{@owner}のTVを使います。"
  end
end