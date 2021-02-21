module Inheritance
  class Banner
    def initialize(str)
      @str = str
    end

    def show_with_paren
      p "(#{@str})"
    end

    def show_with_aster
      p "*#{@str}*"
    end
  end
end