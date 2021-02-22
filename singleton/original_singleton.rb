class OriginalSingleton
  def self.instance
    @singleton ||= new
  end

  private_class_method :new
end