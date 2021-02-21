class BookShelfIterator
  def initialize(book_shelf)
    @book_shelf = book_shelf # Aggregateのインスタンスを保持
    @index = 0 # 現在注目しているAggregateの要素のindexを保持
  end

  def has_next?
    if (@index < @book_shelf.get_length)
      true
    else
      false
    end
  end

  def next
    # get_book_atを呼び出せる=具象AggregateたるBookShelfの実装を知っている
    # 一般に、具象Iteratorは具象Aggregateに依存する
    book = @book_shelf.get_book_at(@index)
    @index += 1
    book
  end
end