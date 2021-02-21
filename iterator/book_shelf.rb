require_relative 'book_shelf_iterator'

class BookShelf
  def initialize
    @books = []
    @last = 0
  end

  def get_book_at(index)
    @books[index]
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def get_length
    @last
  end

  # 自身の持つ要素を順番にスキャンする役割を持つ、iteratorインスタンスを作成する
  def iterator
    BookShelfIterator.new(self)
  end
end