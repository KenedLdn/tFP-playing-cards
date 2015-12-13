class Card
  attr_accessor :rank, :suit

  def initialize (rank, suit)
    @rank = rank
    @suit = suit
  end

  def reveal_card
    puts "#{@rank} of #{@suit.capitalize}"
  end

  def self.random_card
    Card.new(rand(13)+1,:spades)
  end
end

class Deck
  def initialize
    @cards = Array.new
    suits = [:spades, :hearts, :clubs, :diamonds]
    for i in (0..3)
      for j in (1..13)
        @cards << Card.new(j, suits[i])
      end
    end
  end

  def reveal_deck
    @cards.each do |card|
      card.reveal_card
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def count
    puts @cards.size
  end

  def deal
    @cards.shift.reveal_card
  end
end

deck = Deck.new
deck.shuffle
for n in (1..13) do
    deck.count
    deck.deal
  end
