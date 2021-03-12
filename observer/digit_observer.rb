require_relative 'observer'

class DigitObserver < Observer
  def update(generator)
    puts "DigitObserver: #{generator.number}"
    sleep 1
  end
end