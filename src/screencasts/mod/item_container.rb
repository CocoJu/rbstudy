module ItemContainer

  module ClassMethods
    def min_price
      100
    end
  end

  module InstanceMethods
    def add_item(item)
      unless item.price < self.class.min_price
        puts self.class.min_price
        @items.push item
        puts "method add_item perform0."
      end
    end

    def remove_item
      @items.pop
    end

    def validate
      @items.each { |i| puts "Item is no price" if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if {|i| i.price.nil? }
    end
  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

end