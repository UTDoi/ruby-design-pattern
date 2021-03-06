class Visitor
  # rubyではオーバーロードはないので、ConcreteElementであるかObjectStructureであるかは実装内で判断する
  def visit(entry)
    raise NotImplementedError
  end
end