class CashRegister
  
  attr_reader :discount
  
  def initialize(discount_amount = 0)
    @total = 0
    @discount = discount_amount
    @items = []
  end 
  
  def total=(num) #getter method 
    @total = num 
  end 
  
  def total
    @total 
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times {@items << item}
    @total += (price * quantity)
    @last_transaction = (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      @discount_percentage = (@discount / 100.to_f)
      @total -= (@total * @discount_percentage)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @items
  end 

  def void_last_transaction
    @items.pop 
    @total -= @last_transaction
  end
    
end 
