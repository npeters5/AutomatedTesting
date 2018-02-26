
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      # Arrange
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          # Act
          card = Card.new(value, suit)
          # Assert
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
  
      a2spades = Card.new(2, :spades)
      a3spades = Card.new(3, :spades)
      a4spades = Card.new(4, :spades)
      a5spades = Card.new(5, :spades)
      a6spades = Card.new(6, :spades)
      a7spades = Card.new(7, :spades)
      a8spades = Card.new(8, :spades)
      a9spades = Card.new(9, :spades)
      a10spades = Card.new(10, :spades)

      a2spades.to_s.must_equal "2 of spades"
      a3spades.to_s.must_equal "3 of spades"
      a4spades.to_s.must_equal "4 of spades"
      a5spades.to_s.must_equal "5 of spades"
      a6spades.to_s.must_equal "6 of spades"
      a7spades.to_s.must_equal "7 of spades"
      a8spades.to_s.must_equal "8 of spades"
      a9spades.to_s.must_equal "9 of spades"
      a10spades.to_s.must_equal "10 of spades"

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # Need to convert 1 to Ace, 11 to Jack, 12 to Queen, 13 to King

      ace_hearts = Card.new(1, :hearts)
      jack_hearts = Card.new(11, :hearts)
      queen_hears = Card.new(12, :hearts)
      king_hearts = Card.new(13, :hearts)

      ace_hearts.to_s.must_equal "Ace of hearts"
      jack_hearts.to_s.must_equal "Jack of hearts"
      queen_hears.to_s.must_equal "Queen of hearts"
      king_hearts.to_s.must_equal "King of hearts"

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
        jack_hearts = Card.new(11, :hearts)
        jack_hearts.value.must_equal "Jack"
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      a10spades = Card.new(10, :spades)
      a10spades.suit.must_equal :spades
    end
  end

end
