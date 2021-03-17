class BigChar
  def initialize(char_name)
    @char_name = char_name
    File.open("big#{char_name}.txt", 'r') do |f|
      @fontdata = f.readlines.join("\n")
    end
  end

  def print
    puts @fontdata
  end
end