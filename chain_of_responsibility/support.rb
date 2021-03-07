# Handler
class Support
  def initialize(name)
    @name = name
    # たらい回し先のConcreteHandlerをコンポジション
    @next_support = nil
  end

  # setter injection
  def set_next(next_support)
    @next_support = next_support
    return next_support # 呼び出し側でメソッドチェーンによるsetをしやすくするために自身ではなくchain先を返す
  end

  def support(trouble)
    if resolve(trouble)
      done(trouble)
    # 解決に失敗し、next_supportを持っていたらそちらに委譲して責任をたらい回す
    # これにより、ConcreteHandlerたちは個々の責務(resolve)にのみ集中でき、handling処理を書く必要はなくなる
    elsif @next_support
      @next_support.support(trouble)
    else
      fail(trouble)
    end
  end

  def to_string
    "[#{@name}]"
  end

  def resolve(trouble)
    raise NotImplementedError
  end

  def done(trouble)
    puts "#{trouble.to_string} is resolved by #{to_string}"
  end

  def fail(trouble)
    puts "#{trouble.to_string} cannot be resolved"
  end
end