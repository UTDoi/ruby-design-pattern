require_relative 'banner'

class Inheritance::BannerPrinter < Inheritance::Banner
  def print_weak
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end