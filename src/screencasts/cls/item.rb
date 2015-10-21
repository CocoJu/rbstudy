class Item

  @@discount = 0.05

  def self.discount
    if Time.now.month == 1
      @@discount + 0.3
    else
      @@discount
    end
  end

  # method "initialize" perform via .new instruction
  def initialize(options)
    @real_price = options[:price]
    @name   = options[:name]
  end

  def info
    yield(price)
    yield(name)
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax
  end

  private

    def tax
      type_tax = if self.class == "VirtualItem"
        1
      else
        2
      end
      cost_tax = if @real_price > 5
        @real_price * 0.2
      else
        cost_tax + type_tax
      end
    end

  attr_reader :name

end