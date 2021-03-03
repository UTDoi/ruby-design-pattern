require_relative 'pseudo_file'
require_relative 'pseudo_directory'

puts "Making root entries..."
root_dir = PseudoDirectory.new('root')
bin_dir = PseudoDirectory.new('bin')
tmp_dir = PseudoDirectory.new('tmp')
usr_dir = PseudoDirectory.new('usr')
root_dir.add(bin_dir)
root_dir.add(tmp_dir)
root_dir.add(usr_dir)

vi_file = PseudoFile.new('vi', 10000)
latex_file = PseudoFile.new('latex', 20000)
bin_dir.add(vi_file)
bin_dir.add(latex_file)
root_dir.print_list
puts vi_file.full_path

