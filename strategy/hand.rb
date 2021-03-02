class Hand
  module HANDVALUE
    GUU = 0
    CHO = 1
    PAA = 2
  end

  attr_reader :handvalue

  def initialize(handvalue)
    @handvalue = handvalue
  end

  def self.get_hand(handvalue)
    @@hand[handvalue]
  end

  def stronger_than?(hand)
    _fight(hand) == 1
  end

  def weaker_than?(hand)
    _fight(hand) == -1
  end

  def to_string
    @@name[@handvalue]
  end

  def _fight(hand)
    if (self == hand)
      0
    elsif (@handvalue + 1) % 3 == hand.handvalue
      1
    else
      -1
    end
  end

  @@hand = [new(HANDVALUE::GUU), new(HANDVALUE::CHO), new(HANDVALUE::PAA)]
  @@name = ['グー', 'チョキ', 'パー']

  private_class_method :new
end