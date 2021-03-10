require_relative 'login_frame'

frame = LoginFrame.new
frame.create_colleagues

text_field = frame.text_field
check_box = frame.check_box
button = frame.button

statues = -> { {text_field: text_field.enabled, check_box: check_box.enabled, button: button.enabled} }
puts statues.call

check_box.item_state_changed
text_field.text_value_changed('OK')
puts statues.call

text_field.text_value_changed('checkbox is disabled')
puts statues.call