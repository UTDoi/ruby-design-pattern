class Memento
  def initialize(money)
    @money = money
    @fruits = []
  end

  def add_fruits(fruit)
    @fruits << fruit
  end

  # 本来以下のメソッドはgamerにしか公開したくない
  # オブジェクトの状態をもとに戻すために内部情報をさらけ出すため、publicに公開するとカプセル化を崩してしまう
  def get_money
    @money
  end

  def get_fruits
    @fruits.dup
  end
end