class Item

  # method "initialize" perform via .new instruction
  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

# attr_reader :price, :weight
# attr_writer :price, :weight

# attr_reader, attr_writer - united description
  attr_accessor :price, :weight

end