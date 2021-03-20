class AbstractDisplayer

  # algorithmのみが記述されるメソッド
  def display
    _open
    (1..5).each do
      _print
    end
    _close
  end

  # 具体的な処理はカプセル化
  private

  # 具体的な処理はsub classに任せる
  # algorithm中の変化する処理部分だけ抜き出し、sub classでoverrideして拡張できるようにすることでOCPを実現する
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