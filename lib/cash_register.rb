require 'pry'
class CashRegister
  attr_accessor :discount, :total
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
    @cost = []
  end
  
  def add_item(item, cost, quantity = 1)
    @total = @total + (quantity * cost)
    quantity.times do
      @items << item
    end
    quantity.times do
      @cost << cost
    end
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = (@total * (1.0 - (@discount/100.0))).to_i
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @cost[-1]
    @cost.pop
    @items.pop
    if @items.length == 0 
      return 0.0
    end
  end
end
