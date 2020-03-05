class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(title, price, quantity = 1)
    @items += [title]*quantity
    @total += price * quantity
    @last_transaction_amount = price * quantity
    @total
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
    @total.to_f
  end
end
