require_relative 'simple_singleton'
require_relative 'original_singleton'

obj1 = SimpleSingleton.instance
obj2 = SimpleSingleton.instance
obj3 = OriginalSingleton.instance
obj4 = OriginalSingleton.instance

p(obj1 == obj2)
p(obj3 == obj4)
p(obj1 == obj4)

begin
  SimpleSingleton.new
rescue => e
  p e.message
end

begin
  OriginalSingleton.new
rescue => e
  p e.message
end