class BookShelfIterator
  def initialize(book_shelf)
    @book_shelf = book_shelf
    @index = 0
  end

  def has_next?
    if (@index < @book_shelf.get_length)
      true
    else
      false
    end
  end

  def next
    book = @book_shelf.get_book_at(@index)
    @index += 1
    book
  end
end