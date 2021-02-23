class Director
  def initialize(builder)
    @builder = builder
  end

  def construct
    # 自身の依存するbuilderインターフェースについての知識を元に、build algorithmのみを記述
    # concrete builderについては自由に入れ替え可能
    @builder.make_title('Greeting')
    @builder.make_string('朝から昼')
    @builder.make_items(['おはよう', 'こんにちは'])
    @builder.make_string('夜に')
    @builder.make_items(['こんばんは', 'おやすみ', 'さよなら'])
    @builder.close
  end
end