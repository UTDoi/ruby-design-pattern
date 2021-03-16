class Context
  def set_clock
    raise NotImplementedError
  end

  def change_state
    raise NotImplementedError
  end

  def call_security_center
    raise NotImplementedError
  end

  def record_log
    raise NotImplementedError
  end
end
