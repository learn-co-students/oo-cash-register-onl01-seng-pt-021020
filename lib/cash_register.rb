class CashRegister

  attr_reader :discount #gets the discount
  attr_accessor :price

  def initialize(discount_amount = 0) #accepts a disocunt but defaults
    @discount = discount_amount
    @total = 0
    @items = []
  end

  def total=(num) #setter methhod
    @total = num
  end

  def total #getter method
    @total
  end

  def add_item(title, price, quantity = 1) #has at least one item
    @total += (price * quantity) #multiplies the price to quantity and adds it == to total
    quantity.times { @items << title }

    @item_count = (price * quantity)
  end

  def apply_discount
    if @discount > 0
    discount_percentage = (@discount.to_f / 100)
    @total -= (@total * discount_percentage)
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    #subtract last added tiem
    @items.pop #remove last item from array / cart

    @total -= @item_count
  end

end
