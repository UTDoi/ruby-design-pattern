require_relative 'delegation/banner_printer'
require_relative 'inheritance/banner_printer'

printer = Delegation::BannerPrinter.new('Hello')
printer.print_weak
printer.print_strong

printer = Inheritance::BannerPrinter.new('Hello')
printer.print_weak
printer.print_strong
