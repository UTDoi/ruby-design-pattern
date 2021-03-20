require_relative 'macro_command'
require_relative 'draw_canvas'
require_relative 'draw_command'

# Invoker兼Client

# Clientとして、ConcreteCommandを生成しReceiverを割り当てている
history = MacroCommand.new
canvas = DrawCanvas.new(100, 200, history)

# マウスがドラッグされたとする
cmd = DrawCommand.new(canvas, {x: 20, y: 30})
cmd.execute
history.append(cmd)
