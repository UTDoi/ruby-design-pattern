require_relative 'visitor'

class ListVisitor < Visitor
  def initialize
    @current_dir = ''
  end

  def visit(entry)
    puts "#{@current_dir}/#{entry.to_string}"
    return if entry.child.empty? # ObjectStructureでないなら走査すべき構造を持っていないので、そのElementのvisit処理のみを行いreturnする

    tmp = @current_dir
    @current_dir += "/#{entry.name}"
    entry.child.each do |e|
      e.accept(self) # Element1つ1つに対して自身を引数にacceptを呼び、渡り歩く
    end
    @current_dir = tmp
  end
end