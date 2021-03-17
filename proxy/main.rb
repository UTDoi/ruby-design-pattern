require_relative 'printer_proxy'

printer = PrinterProxy.new('Alice')
puts "名前は現在#{printer.get_printer_name}です"
printer.set_printer_name('Bob')
puts "名前は現在#{printer.get_printer_name}です"
printer.print('Hello, World')
printer.print('Hello, Japan')