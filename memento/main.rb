require_relative 'gamer'

# entry pointがCaretakerになっている

gamer = Gamer.new(100)
# CaretakerはMementoのnarrow interfaceしか使えないので、内部情報にアクセスできない
# mementoはひとかたまりのブラックボックスとしてみなし、originatorのrestore_mementoにわたすことでよしなにやってもらうことを期待している
memento = gamer.create_memento

100.times do |i|
  puts "==== #{i}"
  puts "現状: #{gamer.to_string}"

  gamer.bet

  puts "所持金は#{gamer.get_money}円になりました"

  if gamer.get_money > memento.get_money
    puts 'だいぶ増えたので、現在の状態を保存しておこう'
    memento = gamer.create_memento
  elsif gamer.get_money < (memento.get_money/2)
    puts 'だいぶ減ったので、以前の状態に復帰しよう'
    gamer.restore_memento(memento)
  end

  sleep 1
  puts ''
end