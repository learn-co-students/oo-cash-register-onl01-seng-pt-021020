class CashRegister
  attr_accessor :total, :discount, :items
  
 def initialize(discount = 0) 
   @total = 0 
   @discount = discount
   @items = []
 end
 
 def add_item(title, price, quanity = 1)
  @total += price * quanity
  quanity.times do
    @items << title 
  end 
  @last_item = price * quanity
end 

def apply_discount
  if @discount > 0 
  disc_total = (@total * (discount.to_f/100.to_f))
  @total -= disc_total
  return "After the discount, the total comes to $#{@total.to_i}."
else 
  "There is no discount to apply."
end 
end 

def void_last_transaction
  @total -= @last_item
end 

end 
  
