class CashRegister
attr_accessor :total, :discount, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
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
title = price
@total += title

end
end
