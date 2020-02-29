class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost, quantity = 1)
    @total = @total + (quantity * cost)
  end
  
  def apply_discount
    @total = @total * (1 - (@discount/100))
  end
end
