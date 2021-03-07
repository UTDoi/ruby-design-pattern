require_relative 'support'

class LimitSupport < Support
  def initialize(name, limit)
    super(name)
    @limit = limit
  end

  def resolve(trouble)
    if trouble.number < @limit
      true
    else
      false
    end
  end
end