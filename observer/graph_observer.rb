require_relative 'observer'

class GraphObserver < Observer
  def update(generator)
    puts('*' * generator.number)
    sleep 1
  end
end