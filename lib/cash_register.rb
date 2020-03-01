class CashRegister
  
  attr_accessor :total, :discount, :title, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, qty = 1)
    @last_transaction = price*qty
    @total += (price * qty)
    while qty >= 1 do
      @items << title
      qty -= 1 
    end
  end
    
  def apply_discount
    if self.discount > 0
      self.discount = self.discount.to_f * 0.01 
      subtract = @total * self.discount
      @total -= subtract
      @total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items 
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
    
  
