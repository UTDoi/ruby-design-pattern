class UnderlinePen
  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(str)
    length = str.bytesize
    puts "\"#{str}\""
    print " "
    length.times { print @ulchar }
    puts ""
  end

  def create_clone
    clone # shallow copyであることに注意
  end
end