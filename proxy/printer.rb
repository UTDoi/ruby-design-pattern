require_relative 'printable'

# RealSubject
# Proxyから委譲される本人
class Printer < Printable
  def initialize(name)
    @name = name
    heavy_job("Printerのインスタンス(#{name})生成中")
  end

  def set_printer_name(name)
    @name = name
  end

  def get_printer_name
    @name
  end

  def print(str)
    puts "=== #{@name} ==="
    puts str
  end

  private

  # このクラスのインスタンスの生成処理が重いことをエミュレートするためのやつだから特に意味はない
  def heavy_job(msg)
    puts msg
    5.times do
      puts '.'
      sleep 1
    end
    puts '完了'
  end
end