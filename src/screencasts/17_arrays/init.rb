require_relative "../../src/cls/cart"
require_relative "../../src/cls/item"
require_relative "../../src/cls/virtual_item"
require_relative "../../src/cls/real_item"

cart = Cart.new
cart.add_item(Item.new({ :price => nil, :weight => 100 }))
cart.add_item(Item.new({ :price => 101, :weight => 20 }))

p cart.items

cart.remove_item
cart.validate
p cart.items

item = RealItem.new({:price => 10, :weight => 100, :name => "Car"})
item2 = VirtualItem.new({:price => 5, :weight => 100, :name => "Computer"})
item3 = Item.new({:weight => 200, :name => "BigCar"})

item.info { |attr| puts attr}
item2.info {|attr| puts attr}

cart2 = Cart.new
cart2.add_item item
cart2.add_item item2

p item.respond_to?(:weight)
p item2.respond_to?(:weight)
p item3.respond_to?(:weight)

p cart2
cart2.delete_invalid_items
p cart2

