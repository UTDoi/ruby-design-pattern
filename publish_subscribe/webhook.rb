require_relative 'subscriber'

class Webhook < Subscriber
  def initialize(webhook_url)
    @webhook_url = webhook_url
  end

  def notify(payload)
    puts "request succeeded! url: #{@webhook_url} body: #{payload}"
  end
end