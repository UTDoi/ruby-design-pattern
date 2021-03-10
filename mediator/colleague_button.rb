require_relative 'colleague'

class ColleagueButton < Colleague
  attr_reader :enabled

  def initialize(caption)
    @caption = caption
    @enabled = false
  end

  def set_colleague_enabled(enabled)
    @enabled = enabled
  end
end