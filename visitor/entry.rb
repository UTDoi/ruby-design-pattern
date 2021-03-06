require_relative 'element'

class Entry < Element
  class FileTreatmentError < StandardError; end

  def name
    raise NotImplementedError
  end

  def size
    raise NotImplementedError
  end

  def add(entry)
    raise FileTreatmentError.new
  end

  def child()
    raise FileTreatmentError.new
  end

  def to_string
    "#{name} (#{size})"
  end
end