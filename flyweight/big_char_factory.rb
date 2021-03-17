require 'singleton'
require_relative 'big_char'

class BigCharFactory
  include Singleton

  def initialize
    # poolingされているオブジェクトはBigCharFactory Singletonから参照され続けるため、GCの対象にならないことに注意
    @pool = {}
  end

  def get_big_char(char_name)
    # 一度生成されたBigCharインスタンスは共有されるのでメモリ節約にはなるが、利用側で破壊的変更が入ると他の利用箇所に影響を与えてしまうので注意
    # 一般に共有するオブジェクトはimmutableにしておくのが吉
    # また、作成済みインスタンスの場合はその参照を返すだけなのでインスタンス生成コストも抑えられる
    @pool[char_name] ||= BigChar.new(char_name)
  end
end