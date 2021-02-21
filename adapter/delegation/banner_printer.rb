require_relative 'banner'

class Delegation::BannerPrinter
  def initialize(str)
    @banner = Delegation::Banner.new(str)
  end

  def print_weak
    @banner.show_with_paren
  end

  def print_strong
    @banner.show_with_aster
  end
end