require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  @@item = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)

    @title = title
    @price = price
    @quantity = quantity

    self.total += price * quantity
    @@item << self
  end

  def apply_discount
    if discount > 0
      self.total = total - (total * discount/100)
      #self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    i = self.add_item(title, price, quantity)
    i.map { |t| t.title }
    end

#binding.pry
end

# this version only gives me 'tomato':
# item = []
# new_register = CashRegister.new
# new_register.add_item(title, price, quantity)
# item << new_register
# item.map{ |t| t.title }


# item << self.title
# self.add_item(title, price, quantity)

#  puts @@all.map{ |dog| dog.name }
# a = %w{ a b c d e f }
# a.select {|v| v =~ /[aeiou]/}   #=> ["a", "e"]

# name = "paramName"
# instance_variable_get(("@" + name).intern)

# def foo(x, y)
#   method(__method__).parameters.map do |_, name|
#     binding.local_variable_get(name)
#   end
# end
#
# foo(1, 2)  # => 1, 2
