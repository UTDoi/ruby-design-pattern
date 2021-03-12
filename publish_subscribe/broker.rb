# こいつがバスとなり、PublisherとSubscriberを疎結合にする
# ObserverパターンでSubjectが担当してた、observersの保持とそいつらへの通知の責務をこっちに持ってきた感じ
# Publisher側では通知タイミングでこいつのpublishメソッドを呼び出すことで、通知処理をbrokerに委譲することになる
# Publisherはobserverへの通知のためのメソッド(今回でいうとnotify)を全く知らなくてよくなってより結合度が低くなり、
# 通知の方法(例えば、payloadをmaskingしてから通知するとか、帯域負荷削減のため1sずつsleepして通知するとか)についてもこのbrokerに責務を委譲することができ、柔軟性が高まる
class Broker
  def initialize
    @subscribers = {}
  end

  def subscribe(event_name, subscriber)
    @subscribers[event_name] ||= []
    @subscribers[event_name] << subscriber
  end

  def publish(event_name, payload)
    @subscribers[event_name].each do |subscriber|
      subscriber.notify(payload)
    end
  end
end
