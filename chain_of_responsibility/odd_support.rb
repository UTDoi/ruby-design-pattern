require_relative 'support'

class OddSupport < Support
  def resolve(trouble)
    if trouble.number.odd?
      true
    else
      false
    end
  end
end