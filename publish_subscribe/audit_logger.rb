require_relative 'subscriber'

class AuditLogger < Subscriber
  def notify(payload)
    puts "logging succeeded! content: #{payload}"
  end
end