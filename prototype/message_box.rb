class MessageBox
  def initialize(decochar)
    @decochar = decochar
  end

  def use(str)
    length = str.bytesize
    (length+4).times { print @decochar }
    puts ""
    print "#{@decochar} #{str} #{@decochar}"
    puts ""
    (length+4).times { print @decochar }
    puts ""
  end

  def create_clone
    clone # shallow copyであることに注意
  end
end