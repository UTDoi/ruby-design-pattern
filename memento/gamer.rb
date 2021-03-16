require_relative 'memento'

# Originator
class Gamer
  @@fruitsname = ['リンゴ', 'ぶどう', 'バナナ', 'みかん']

  def initialize(money)
    @money = money
    @fruits = []
  end

  def get_money
    @money
  end

  def bet
    dice = rand(6) + 1

    if dice == 1
      @money += 100
      puts '所持金が増えました'
    elsif dice == 2
      @money /= 2
      puts '所持金が半分になりました'
    elsif dice == 6
      f = get_fruit
      puts "フルーツ(#{f})をもらいました。"
      @fruits << f
    else
      puts '何も起きませんでした'
    end
  end

  # 自身の現在の状態をmementoとして作成(保存)し、返却する
  def create_memento
    memento = Memento.new(@money)
    @fruits.each do |f|
      memento.add_fruits(f) if f.start_with?('おいしい')
    end
    memento
  end

  # 与えられたmementoの状態に自身の状態を戻す
  def restore_memento(memento)
    @money = memento.get_money
    @fruits = memento.get_fruits
  end

  def to_string
    "[money = #{@money}, fruits = #{@fruits}]"
  end

  def get_fruit
    prefix = ''
    if rand(2).zero?
        prefix = 'おいしい'
    end
    "#{prefix}#{@@fruitsname[rand(@@fruitsname.length)]}"
  end
end