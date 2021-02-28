require_relative 'item'

class Link < Item
  def initialize(caption, url)
    @caption = caption
    @url = url
  end
end