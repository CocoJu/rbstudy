require_relative "../src/cls/item"
require_relative "../src/cls/virtual_item"

item = VirtualItem.new({ :price => 10, :name => "Car"})

=begin
in `<top (required)>': private method `tax' called for #<Item:0x2822520 @price=100, @name="Car"> (NoMethodError)
tax is private method
puts item.tax
=end

puts item.price
