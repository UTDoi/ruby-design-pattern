require_relative 'director'
require_relative 'text_builder'
require_relative 'html_builder'

VALID_FORMATS = ['plain', 'html']

unless ARGV.size == 1 && VALID_FORMATS.include?(ARGV[0])
  puts "#{VALID_FORMATS}のどちらかをコマンド引数に指定してください"
  exit!
end

builder = case ARGV[0]
          when 'plain'
            TextBuilder.new
          when 'html'
            HtmlBuilder.new
          end

# ConcreteBuilderのインスタンスなら何でも渡せる
director = Director.new(builder)
director.construct
puts builder.result
