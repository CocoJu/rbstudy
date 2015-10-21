require_relative "./cls/item"
require_relative "./cls/real_item"

item = Item.new({:name => "Car", :price => 100})
item2 = RealItem.new({:name => "Car-Toyota Camry", :price => 1000, :weight => 100})
p item.price
p item2.price