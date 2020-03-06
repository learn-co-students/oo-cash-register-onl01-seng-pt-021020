class CashRegister
  attr_accessor :discount, :purchases, :total, :transaction

  def initialize(discount=nil)
    self.total = 0
    self.discount = discount if discount != nil
    self.purchases = []
  end
  #sets the total to zero upon initialization
  #sets the discount to zero if no discount, but adds the discount to the total if there is one
  #sets purchases to an empty array

  def add_item(name, price, quantity=1)
    self.transaction = [name, price, quantity]
    quantity.times do
      self.purchases.push self.transaction[0]
      self.total += self.transaction[1]
    end
  end
  #add_item requires a name, price, and quantity when called
  #the transaction is pushed to the purchases array
  #doesn't forget about the previous total

  def apply_discount
    if discount
      self.total = self.total - self.total*self.discount/100
      result = "After the discount, the total comes to $#{self.total}."
    else
      result = "There is no discount to apply."
    end
    return result
  end
  #discount is applied to the total if discount is there
  #if there is no discount to the total, returns a message
  #returns the result of the purchase at the end

  def items
    return self.purchases
  end
  #returns the current total of the current purchases

  def void_last_transaction
    quantity = self.transaction[2]
    quantity.times do
      self.purchases.pop
      self.total -= self.transaction[1]
    end
  end
  #quantity variable set to the last item of the transactions array
  #quantity array deletes the last item of the purchases array
  #subtracts the last transaction amount from the total 
end
