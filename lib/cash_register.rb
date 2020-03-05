class CashRegister
  attr_reader :discount, :total

  def initialize(discount_amount=0)
    @total = 0
    @discount = discount_amount
    @items = []
  end

  def total=(num)
    @total = num
  end

  def add_item(title, price, quantity = 1)
    quantity.times  {@items << title}
    @total += (price * quantity)
    @l_item = (price * quantity)
    total
  end

  def apply_discount
    if @discount > 0
      disc_percentage = (@discount.to_f / 100)
      @total -= (@total *   disc_percentage)
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
    @total -= @l_item
  end

end
