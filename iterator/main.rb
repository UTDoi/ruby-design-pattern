require_relative 'book'
require_relative 'book_shelf'

book_shelf = BookShelf.new

book_shelf.append_book(Book.new('hoge'))
book_shelf.append_book(Book.new('fuga'))
book_shelf.append_book(Book.new('piyo'))
book_shelf.append_book(Book.new('foo'))
book_shelf.append_book(Book.new('bar'))
book_shelf.append_book(Book.new('buzz'))

iterator = book_shelf.iterator
while iterator.has_next?
  book = iterator.next
  p book.name
end