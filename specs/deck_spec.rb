

require_relative 'spec_helper'

describe Deck do

  before do
    @new_deck = Deck.new
  end
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

    # it should test .new method
    it "Can be created" do
      @new_deck.must_be_instance_of Deck
    end

    it "Must have 52 Card objects as attributes" do
      @new_deck.cards[1].must_be_instance_of Card
      @new_deck.cards[33].must_be_instance_of Card
      @new_deck.cards.length.must_equal 52
    end

    it "Can shuffle the collection of cards" do
      @new_deck.shuffle
      @new_deck.cards.length.must_equal 52
    end

    it "Removes a Card from the Deck and returns the removed Card" do
      deck_two = Deck.new
      deck_two.draw

      deck_two.cards.length.must_equal 51
      deck_two.drawn_cards.length.must_equal 1
    end
    # count method should return an integer

    it "Can return the number of cards in the Deck" do
      deck_three = Deck.new
      deck_three.draw

      deck_three.count.must_equal 51
    end

end
