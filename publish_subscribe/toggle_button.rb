require_relative 'subscriber'

class ToggleButton < Publisher
  def initialize
    super
    @enabled = false
  end

  def toggle
    @enabled = !@enabled
    publish_event('value_changed', @enabled)
  end
end