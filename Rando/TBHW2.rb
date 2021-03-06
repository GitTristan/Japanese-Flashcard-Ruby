#Flashcard App
#55:12 BANG
# card = Card.new
class Application
  def initialize
    @decks = []
  end
  
  def << deck
    @decks << deck
  end
  
  def play
    display_decks
    puts "Pick a deck: "
    deck = get_deck
    p deck
    deck.play
  end
  
  def display_decks
    @decks.each do |deck|
      puts deck.name
    end
  end
  
  def get_deck
    name = gets.chomp
    @decks.detect do |deck|
      deck.name == name
    end
  end
end

class Card
  attr_accessor :front, :back
  
  def initialize front, back
   @front = front
   @back = back
  end
  
  def correct? guess
    guess == @back
  end
  
  def play
  end
end

class Deck
  attr_reader :name, :cards
  def initialize name
    @name = name
    @cards = []
  end
  
  def << card
    @cards << card
  end
  
  def play
    shuffle
    @cards.each do |card|
      card.play
    end
  end
  
  def shuffle
    @cards.shuffle!
  end
end
  

card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu")
card3 = Card.new("snake", "hebi")
  
deck = Deck.new("Japanese")
deck << card1
deck << card2
deck << card3

app = Application.new
app << deck
app.play
  
deck.shuffle

deck.cards.each do |card|
  front = card.front
  back = card.back
  
  print "#{front} > "
  guess = gets.chomp
  
  if card.correct?(guess)
    puts "Correct"
  else
    puts "Incorrect.  The answer was #{back}."
  end
end
