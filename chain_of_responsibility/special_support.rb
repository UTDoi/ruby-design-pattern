require_relative 'support'

class SpecialSupport < Support
  def initialize(name, number)
    super(name)
    @number = number
  end

  def resolve(trouble)
    if trouble.number == @number
      true
    else
      false
    end
  end
end