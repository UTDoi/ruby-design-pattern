require_relative 'colleague'

class ColleagueCheckBox < Colleague
  attr_reader :enabled

  def initialize(caption)
    @caption = caption
    @enabled = false
  end

  def set_colleague_enabled(enabled)
    @enabled = enabled
  end

  def item_state_changed
    @mediator.colleague_changed
  end
end