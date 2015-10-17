require_relative "../../src/cls/cart"
require_relative "../../src/cls/item"

cart = Cart.new
cart.add_item(Item.new({:price => 10, :weight => 100}))
cart.add_item(Item.new({:price => 1, :weight => 20}))

p cart.items

cart.remove_item
p cart.items
