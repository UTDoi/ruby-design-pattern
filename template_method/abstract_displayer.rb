class AbstractDisplayer

  # algorithmのみが記述されるメソッド
  def display
    _open
    (1..5).each do
      _print
    end
    _close
  end

  # 具体的な処理はsub classに任せる
  def _open
    raise NotImplementedError
  end

  def _print
    raise NotImplementedError
  end

  def _close
    raise NotImplementedError
  end
end