require_relative "./cls/cart"
require_relative "./cls/order"
require_relative "./cls/item"
require_relative "./cls/real_item"

# add "include ItemContainer" feature to cart & order

item = Item.new({:name => "Car", :price => 100})
item2 = RealItem.new({:name => "Car-Toyota Camry", :price => 1000, :weight => 100})

cart = Cart.new
cart.add_item item
cart.add_item item2
cart.remove_item
puts cart.items.size

order = Order.new
order.add_item item
order.add_item item2
order.add_item item
order.remove_item
puts order.items.size