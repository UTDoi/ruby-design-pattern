class Item
  def initialize(caption)
    @caption = caption
  end

  def make_HTML
    raise NotImplementedError
  end
end