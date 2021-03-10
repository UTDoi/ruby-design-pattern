require_relative 'mediator'
require_relative 'colleague_button'
require_relative 'colleague_check_box'
require_relative 'colleague_text_field'

# ConcreteMediator
class LoginFrame < Mediator
  attr_reader :button, :check_box, :text_field

  def initialize
    @button = nil
    @check_box = nil
    @text_field = nil
  end

  def create_colleagues
    @button = ColleagueButton.new('ボタン')
    @check_box = ColleagueCheckBox.new('チェックボックス')
    @text_field = ColleagueTextField.new('placeholder')

    [@button, @check_box, @text_field].each {|colleague| colleague.set_mediator(self)  }
  end

  # 自身の持つcolleaguesの状態を取得し、それに応じて適切にcolleaguesに指示を送る
  # 各colleagues(コンポーネント)の状態に関する相関ロジックをConcreteMediatorに集約できるメリットがある
  # ここに集約しないと、各colleagueで他のcolleagueに依存し合うことになり、colleagueの数が増えるとカオスになる
  # このおかげで各colleaguesの部品としての独立性(再利用性)は高くなるが、mediatorはアプリケーション依存度が高くなり再利用困難にはなる
  #   - アプリケーションロジックの塊のようなものなので
  def colleague_changed
    if @check_box.enabled && @text_field.text == 'OK'
      @check_box.set_colleague_enabled(true)
      @button.set_colleague_enabled(true)
      @text_field.set_colleague_enabled(false)
    elsif !@check_box.enabled
      @check_box.set_colleague_enabled(true)
      @button.set_colleague_enabled(false)
      @text_field.set_colleague_enabled(true)
    elsif @text_field.text == 'checkbox is disabled'
      @check_box.set_colleague_enabled(false)
      @button.set_colleague_enabled(false)
      @text_field.set_colleague_enabled(true)
    else
      @button.set_colleague_enabled(false)
    end
  end
end