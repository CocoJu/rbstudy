require_relative "./cls/order"
require_relative "../src/cls/item"

order = Order.new

puts Order.min_price
order.add_item Item.new({:name => "Car", :price => 80})
p order.items