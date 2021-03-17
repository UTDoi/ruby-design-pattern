require_relative 'big_char_factory'

class BigString
  def initialize(str)
    factory = BigCharFactory.instance
    @big_chars = str.split('').map do |s|
      factory.get_big_char(s)
    end
  end

  def print
    @big_chars.each do |bg|
      bg.print
    end
  end
end