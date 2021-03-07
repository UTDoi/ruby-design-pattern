require_relative 'no_support'
require_relative 'limit_support'
require_relative 'odd_support'
require_relative 'special_support'
require_relative 'trouble'

alice = NoSupport.new('Alice')
bob = LimitSupport.new('Bob', 100)
charlie = SpecialSupport.new('Charlie', 429)
diana = LimitSupport.new('Diana', 200)
elmo = OddSupport.new('Elmo')
fred = LimitSupport.new('Fred', 300)

# Client側からしたらHandler達のたらい回しchainのどこかでrequestが処理されればよい
# 'このrequestだったらこのHandlerに処理させる'というような知識をClient側でもつ必要がなくなることで、各Handlerのカプセル化はより強固に保たれ(外部に晒す知識が減るので)、部品としての独立性がより増す
# 独立性が高いので、新たなConcreteHandlerを追加するのは容易
alice.set_next(bob).set_next(charlie).set_next(diana).set_next(elmo).set_next(fred)

0.step(495, 33) do |i|
  alice.support(Trouble.new(i))
end