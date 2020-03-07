#
# class CashRegister
#
#   attr_accessor :total, :discount, :cart, :price
#
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @cart = []
#
#   end
#
#   def add_item(item, price, num_of_item = 1)
#     # have an item and its price, item increases by one and the @total increases by the amount of the price
#
#     # what do you want this function to do when you call it?
#
#
#       # this calculates cost of one item
#     @total += price * num_of_item
#     @cart << @total
#   end
#
#   def apply_discount
#     # we have a discount which will be applied to the total price
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#       #'After the discount, the total comes to #{@total.to_i}.'
#     else
#       'There is no discount to apply.'
#     end
#   end
#
#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
#
# end

class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
