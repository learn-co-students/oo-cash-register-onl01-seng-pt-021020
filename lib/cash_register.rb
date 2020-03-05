class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0) #default discount is 0 unless we say otherwise 
    @total = 0 #sets instance variable @ total on initialization to 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity = 1) #default quantity is 1 unless we specify otherwise 
    self.total += amount * quantity
    #to call an instance method inside another instance method, we use self to refer to the instance we are operating on. 
    quantity.times do 
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount > 0

      self.total = (total - (total * discount.to_f/100)).to_i
      "After the discount, the total comes to $#{self.total}."

    else

      "There is no discount to apply."
      
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end