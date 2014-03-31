#Classes and Objects
#An object is a instance of a class 
#
#

#book_1 = {title: "Programming Ruby", pages: 360}

class Book
  attr_accessor :title, :pages
  
  def initialize title, pages 
    @title = title
    @pages = pages
  end
  
  def summary
    "#{title} is #{pages} pages"
  end
end

class Drink
  attr_accessor :brand, :size
  
  def initialize(brand, size)
    @brand = brand
    @size = size
  end
  
  def summary
    "#{size} #{brand}"
  end
end

class Coffee < Drink
  
  def summary
    "Hot #{size} #{brand} coffee"
  end
end

book_1 = Book.new "War, what is it good for?", 1000
book_2 = Book.new "The Bible", 2500
drink = Drink.new "Coke", "8 oz"
coffee = Coffee.new "Starbucks", "8 oz"

summaries = [book_1, book_2, drink, coffee].collect { |item| item.summary}

p summaries
