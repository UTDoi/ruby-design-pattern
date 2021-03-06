require_relative 'pseudo_file'
require_relative 'pseudo_directory'
require_relative 'list_visitor'

puts "Making root entries..."
root_dir = PseudoDirectory.new('root')
bin_dir = PseudoDirectory.new('bin')
tmp_dir = PseudoDirectory.new('tmp')
usr_dir = PseudoDirectory.new('usr')
root_dir.add(bin_dir)
root_dir.add(tmp_dir)
root_dir.add(usr_dir)
# root_dirの構造を基礎にして処理を実行したいとき(例えば再帰的な走査など)、ここやroot_dir(つまりデータ構造自体)に処理(例えばloop処理)を書くのではなく、ConcreteVisitorに処理を分離することで、データ構造の独立性を高める
# 反面、ConcreteVisitorは扱うデータ構造クラスについての知識を多分に持っている必要があるため、データ構造クラスはpublicにデータアクセスメソッドを晒す必要が出てきてカプセル化は壊れる
root_dir.accept(ListVisitor.new)

vi_file = PseudoFile.new('vi', 10000)
latex_file = PseudoFile.new('latex', 20000)
bin_dir.add(vi_file)
bin_dir.add(latex_file)
bin_dir.accept(ListVisitor.new)

