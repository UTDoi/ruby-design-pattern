class Observer
  # Subjectにこいつを呼び出してもらうことで通知を実現する
  def update
    raise NotImplementedError
  end
end