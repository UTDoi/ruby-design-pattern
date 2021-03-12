require_relative 'publisher'

class TextBox < Publisher
  def initialize
    super
    @text = ''
  end

  def input(text)
    @text = text
    publish_event('value_changed', text)
  end
end