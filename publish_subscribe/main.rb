require_relative 'broker'
require_relative 'audit_logger'
require_relative 'text_box'
require_relative 'toggle_button'
require_relative 'webhook'

broker = Broker.new

webhook = Webhook.new('https://sample.com')
audit_logger = AuditLogger.new

broker.subscribe('value_changed', webhook)
broker.subscribe('value_changed', audit_logger)

text_box = TextBox.new
toggle_button = ToggleButton.new

text_box.add_broker(broker)
toggle_button.add_broker(broker)

text_box.input('pub/subパターン最高!')
toggle_button.toggle