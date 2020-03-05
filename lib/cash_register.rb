class CashRegister
attr_accessor :total, :discount, :items, :price
item = []

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @item = []
end

def apply_discount
  if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
end
end
#we need to pass accept item name and a value of the item  and increase of total,
#accept an optional quantity
#don't forget about the total#
def add_item(title, price, quantity = 0)
  if quantity > 1
    i=0
    while i < quantity
      @item << title
      i+=1
    end
  else @item << title
    @total += price*quantity
    @last_transaction_amount = @total
    @total
end
end

def void_last_transaction()
    @total-= @total
  end
end
