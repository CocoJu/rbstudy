require_relative "../src/cls/item"

item1 = Item.new({ :price => 30, :weight => 10 })
puts item1.price
puts item1.weight

item2 = Item.new({})
puts item2.price
puts item2.weight

puts Item.new({ :price => 30}).price
