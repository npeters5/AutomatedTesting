
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards, :drawn_cards

  def initialize
    @cards = build_cards
    @drawn_cards = []
  end

  def build_cards
    cards = []
    card = nil
    4.times do
      (1..13).each do |value|
        [:hearts, :spades, :clubs, :diamonds].each do |suit|
          card = Card.new(value, suit)
        end
        cards << card
      end
    end
    return cards
  end

  def draw
    # returns a card
    drawn_card = @cards.shift
    @drawn_cards << drawn_card
    return drawn_card
  end

  def shuffle
    # shuffles the deck
    @cards = @cards.shuffle!
  end

  def count
    return @cards.length
  end

end
