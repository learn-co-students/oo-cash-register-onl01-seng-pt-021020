require 'pry'


class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    quantity.times {@items << title}
    @total += price * quantity
    @last_item = [price, quantity]
  end

  def apply_discount
    if @discount > 0
      @total -= @total *  @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @last_item[1].times do
      @items.pop
      @total -= @last_item[0]
    end
  end

end
