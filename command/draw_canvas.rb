require_relative 'drawable'

# Receiver
# Commandが命令を実行する際のレシーバになるオブジェクト
# また、paintメソッドでCommandの実行も行っているのでInvokerとしての役割も持つ
class DrawCanvas < Drawable
  def initialize(width, height, history)
    @width = width
    @height = height
    @history = history
  end

  def paint
    @history.execute
  end

  def draw(x, y)
    puts "横幅#{@width}, 縦幅:#{@height} のキャンバスに x座標: #{x}, y座標: #{y} から線を引いたよ"
  end
end