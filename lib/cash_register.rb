class CashRegister
  attr_accessor :cart, :total, :last_item
  attr_reader :cart

  def initialize(discount=20)
    @total = 0
    @discount = discount
    @cart = []
  end

  def discount
    @discount
  end

  def add_item (title, price, quantity=1) 
    @last_item = price
    quantity.times do @cart << title end
    @total += (price*quantity)
  end

  def apply_discount
    disc = ((@total*discount)/100) 
    @total -= disc
    if @total > 0
    "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  end

  def items
    self.cart
  end

  def void_last_transaction
    @total -= @last_item
  end

end
