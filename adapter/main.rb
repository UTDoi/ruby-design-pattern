require_relative 'delegation/banner_printer'
require_relative 'inheritance/banner_printer'

# 利用側はTargetインターフェースに依存することで、具象Adapterクラスひいては具象Adapteeクラスの入れ替えを用意にする
printer = Delegation::BannerPrinter.new('Hello')
printer.print_weak
printer.print_strong

printer = Inheritance::BannerPrinter.new('Hello')
printer.print_weak
printer.print_strong
