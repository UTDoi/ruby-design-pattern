class IdCard
  attr_reader :owner
  attr_reader :code

  def initialize(owner, code)
    p "#{owner}のカードを作ります。"
    @owner = owner
    @code = code
  end

  def use
    p "#{@owner}のカード(コード:#{@code})を使います。"
  end
end