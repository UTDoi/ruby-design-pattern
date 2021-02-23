class Manager
  def initialize
    @showcase = {}
  end

  def register(name, proto)
    @showcase[name] = proto
  end

  # インスタンスからインスタンスを作る
  def create(proto_name)
    proto = @showcase[proto_name]
    # cloneの具体的な実装は個々のインスタンスに任せる
    proto.create_clone
  end
end