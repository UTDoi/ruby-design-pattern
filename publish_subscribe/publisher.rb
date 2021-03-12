class Publisher
  def initialize
    @brokers = []
  end

  def add_broker(broker)
    @brokers << broker
  end

  def publish_event(event_name, payload = nil)
    @brokers.each {|broker| broker.publish(event_name, payload)}
  end
end