
# add item =>title (price * quantity) 
# if initilized with discount return success message with discount
# if not that returns failur message
# save items in cart in the add item method
# remove last item and price 



class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  
  def initialize(discount = 0)  #sets @total to 0 
    @total = 0 
    @discount = discount
    @items = [] #array for cart
  end
  
  #accepts an item and its price, optionally its quantity and increases the total
  
 def add_item(name, price, quantity = 1) # quantity is one cause we cant buy zero items lol
   
  quantity.times {@items << name}
   

   @total += price * quantity
   

   @last_transaction = price * quantity
 end
 
 
 
 
# def add_item(item, price, quantity = 1) #accepts an item and it's price (and optionally it's quantity) and increases total
#     self.total += price * quantity
#     quantity.times do
#       @items << item
#     end
#     self.last_added = price * quantity
#   end

 
 
 
 
 
 
 
 
 
 
 
 
 # remove discount percentage from total only if its initilized with a discount
 
def apply_discount
   
  if discount != 0
     
     
    percent_off = (100 - @discount.to_f) / 100

    self.total = (@total * percent_off).to_i
    "After the discount, the total comes to $#{@total}."
  else 
    p "There is no discount to apply."
  end
end 
 
 def void_last_transaction
   @total -= @last_transaction
 end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
