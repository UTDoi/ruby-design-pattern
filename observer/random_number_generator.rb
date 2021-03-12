require_relative 'number_generator'

class RandomNumberGenarator < NumberGenerator
  attr_reader :number

  def initialize
    super
    @number = nil
  end

  def execute
    20.times do
      @number = rand(100)
      notify_observers
    end
  end
end