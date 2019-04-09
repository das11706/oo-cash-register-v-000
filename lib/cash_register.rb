require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity, :last

  # @@item = []   This was wrong. I needed and instance variable inside of initalize not a class variable for items.

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    # @last = @items[-1]
  end

  # in what method of the class are you working with an individual item?

  def add_item(item, price, quantity = 1)
    @price = price
    self.total += price * quantity
    quantity.times do
      @items << item
    end

    # @title = title    - This was not required.
    # @quantity = quantity    - This was not required.
    # @@item << self   - This was wrong way to do this.
  end

  def apply_discount
    if discount > 0
      self.total = total - (total * discount/100)
      #self.total = (total * ((100 - discount.to_f)/100)).to_i   This is another way to do the line right above.
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
    # i.map { |t| t.title }  - wrong way to do this
    # # self.map {|i| i.title } - wrong way to do this
    end

    def void_last_transaction
      self.total = total - price
      last = self.total
    end
# binding.pry
end
