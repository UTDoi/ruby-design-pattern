# 実装のクラス階層
# Implementor
class DisplayImpl
  def raw_open
    raise NotImplementedError
  end

  def raw_print
    raise NotImplementedError
  end

  def raw_close
    raise NotImplementedError
  end
end