require_relative 'printable'
require_relative 'printer'

# Proxy
# clientからの要求をできるだけ自分側で処理し、自分だけで処理できなかったとき初めてRealSubjectに処理を委譲する
class PrinterProxy < Printable
  def initialize(name)
    @name = name
    @real = nil
  end

  def set_printer_name(name)
    # Printerインスタンスの生成にはコストがかかるので、まだインスタンスが不要な段階ではProxyが代わりに処理を行う
    unless @real.nil?
      @real.set_printer_name(name)
    end
    @name = name
  end

  def get_printer_name
    @name
  end

  def print(str)
    # Printerインスタンスの生成にはコストがかかるので、必要な段階で初めてrealize(インスタンス生成)する
    realize
    # RealSubjectであるPrinterインスタンスに処理を委譲する
    @real.print(str)
  end

  def realize
    @real ||= Printer.new(@name)
  end
end