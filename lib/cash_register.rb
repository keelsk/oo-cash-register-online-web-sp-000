require 'pry'
class CashRegister
  attr_accessor :discount, :total
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost, quantity = 1)
    @total = @total + (quantity * cost)
    self.all.items << item
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = (@total * (1.0 - (@discount/100.0))).to_i
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    self.all.items
  end
end
