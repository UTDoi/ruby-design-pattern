require_relative 'support'

class NoSupport < Support
  def resolve(trouble)
    false
  end
end