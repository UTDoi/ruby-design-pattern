require_relative 'colleague'

class ColleagueTextField < Colleague
  attr_reader :text, :enabled

  def initialize(text)
    @text = text
    @enabled = false
    @background_color = 'white'
  end

  def set_colleague_enabled(enabled)
    @enabled = enabled
    @background_color = enabled ? 'white' : 'light_gray'
  end

  def text_value_changed(new_text)
    @text = new_text
    @mediator.colleague_changed
  end
end