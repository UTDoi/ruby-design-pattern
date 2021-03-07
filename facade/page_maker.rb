require_relative 'database'
require_relative 'html_writer'

# Facade
class PageMaker
  private_class_method :new

  # 複雑な処理(複数クラスのメソッド呼び出しを順序を意識しながらやったりする)をまとめて、シンプルなインターフェースを外部に提供する
  # 外部に晒すインターフェース(API)はなるべく少なくする=外部と疎結合にするのがポイント
  def self.make_welcome_page(mail, filename)
    mail_props = Database.get_properties('maildata')
    username = mail_props[mail]
    writer = HtmlWriter.new(File.open(filename, 'w'))
    writer.write_title("welcom to #{username}'s page!")
    writer.write_paragraph("#{username}のページへようこそ!")
    writer.write_paragraph('メール待っていますね')
    writer.write_mailto(mail, username)
    writer.close
  end

  def self.make_link_page(filename)
    mail_props = Database.get_properties('maildata')
    writer = HtmlWriter.new(File.open(filename, 'w'))
    writer.write_title('Link Page')
    mail_props.each do |address, name|
      writer.write_mailto(address, name)
    end
    writer.close
  end
end