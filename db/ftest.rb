class Book
  def initialize(title, price)
    @title = title
    @price = price
  end
  def to_s
    "book with title=#{@title} and price=#{@price}"
  end

end

book1 = Book.new("Book of Ruby", 50.63)
puts book1.inspect
book2 = Book.new("Book of Ruby on Rails", "50.10")
puts book2
book3 = Book.new("Book of JavaScript", 50)
puts book3

p book1
p book2
p book3