

require_relative 'spec_helper'

describe Deck do

  before do
    @new_deck = Deck.new
  end

    # it should test .new method
    it "Can be created" do
      @new_deck.must_be_instance_of Deck
    end

    it "Must have 52 Card objects as attributes" do
      @new_deck.cards.must_be_kind_of Array
      @new_deck.cards[1].must_be_instance_of Card
      @new_deck.cards[33].must_be_instance_of Card
      @new_deck.cards.length.must_equal 52
      @new_deck.cards[0].value.must_equal "Ace"
      @new_deck.cards[0].suit.must_equal :hearts
      @new_deck.cards[1].value.must_equal 2
      @new_deck.cards[1].suit.must_equal :hearts
      @new_deck.cards[51].value.must_equal "King"
      @new_deck.cards[51].suit.must_equal :diamonds
      # test the number & suit at various positions
      # test that it is kind of Array
    end

    it "Can shuffle the collection of cards" do
      
      @new_deck.shuffle
      # Maybe the below test is bad because it could be a smaller deck... do a before and after count instead
      @new_deck.cards.length.must_equal 52
    end

    it "Removes a Card from the Deck and returns the removed Card" do
      deck_two = Deck.new
      # draw 2 cards
      deck_two.draw
      deck_two.draw

      deck_two.cards.length.must_equal 50
      deck_two.drawn_cards.length.must_equal 2
    end

    it "Can return the number of cards in the Deck" do
      deck_three = Deck.new
      deck_three.draw

      deck_three.count.must_equal 51
    end

end
