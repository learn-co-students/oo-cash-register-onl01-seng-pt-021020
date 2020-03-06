require 'pry'

class CashRegister 
  attr_accessor :total, :discount, :items
 
 def initialize(discount = 0) 
  @total = 0
  @discount = discount
  @items = []
 end
 
 

def add_item(title, price, quantity = 1)
  @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_item = price * quantity
  end


def apply_discount
  #here you want to subtract the discount from the total
   if @discount > 0
  disc_total = (@total * (discount.to_f/100.to_f))
  @total -= disc_total
  return "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  #want to void the last item added to the total
  @total -= @last_item
end
end



