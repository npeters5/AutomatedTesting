
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = check_value(value)
    @suit = check_suit(suit)

  end

  def check_value(value)
    values = (1..13).to_a
    if values.include?(value)
      case value
      when 1
        value = "Ace"
      when 11
        value = "Jack"
      when 12
        value = "Queen"
      when 13
        value = "King"
      end
      return value
    else
      raise ArgumentError.new("value must be between 1 and 13")
    end
  end

  def check_suit(suit)
    suits = [:spades, :diamonds, :hearts, :clubs]
    if suits.include?(suit)
      return suit
    else
      raise ArgumentError.new("Suit must be spades, diamonds, hearts, or clubs")
    end
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
