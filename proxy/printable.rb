# Subject
# ProxyとRealSubjectを同一視し、clientから透過的に扱えるようにするためのインタフェース
class Printable
  def set_printer_name(name)
    raise NotImplementedError
  end

  def get_printer_name
    raise NotImplementedError
  end

  def print(str)
    raise NotImplementedError
  end
end