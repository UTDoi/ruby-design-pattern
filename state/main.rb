require_relative 'safe_frame'

frame = SafeFrame.new

# 夜間
frame.set_clock(0)
frame.action_performed('button_use')
frame.action_performed('button_alerm')

frame.set_clock(8)
frame.action_performed('button_phone')

# 昼間
frame.set_clock(9)
frame.action_performed('button_use')
frame.action_performed('button_alerm')

frame.set_clock(16)
frame.action_performed('button_phone')